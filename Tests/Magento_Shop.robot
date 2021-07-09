*** Settings ***
Resource    ../Resouces/configuration.robot
Documentation  This is some basic info about the whole suite
Library    SeleniumLibrary
Resource  ../resources/configuration.robot
Test Setup  Begin Web Test
Test Teardown  End Web Test
Resource    ../Resource/Configuration.robot
Resource    ../Resource/MagentoShopApp.robot



*** Variables ***



*** Test Cases ***
Should be able to access "Start" page
    [Documentation]    This is test1
    [Tags]  test1
    OPEN BROWSER   ${START_URL}
    maximize browser window
    sleep    3s
    close all browsers

"Start" page should match requirements
    [Documentation]    This is test2
    [Tags]  test2
    OPEN BROWSER   ${START_URL1}
    maximize browser window
    sleep    3s
    close all browsers

*** Keywords ***
Begin Web Test
    open browser  about:blank  ${BROWSER}
    maximize browser window
End Web Test
    close all browsers






