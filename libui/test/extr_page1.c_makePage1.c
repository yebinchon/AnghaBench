
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiWindow ;
typedef int uiLabel ;
typedef int uiButton ;
typedef int uiBox ;


 int disableControl ;
 int enableControl ;
 int * entry ;
 int forceSpaced ;
 int getButtonText ;
 int getCheckboxText ;
 int getGroupText ;
 int getLabelText ;
 int getWindowText ;
 int hideControl ;
 int * newHorizontalBox () ;
 int * newVerticalBox () ;
 int onChanged ;
 int * page1 ;
 int * page2group ;
 int setButtonText ;
 int setCheckboxText ;
 int setGroupText ;
 int setLabelText ;
 int setWindowText ;
 int showControl ;
 int showSpaced ;
 int * spaced ;
 int toggleSpaced ;
 int uiBoxAppend (int *,int ,int) ;
 int uiButtonOnClicked (int *,int ,int *) ;
 int uiCheckboxOnToggled (int *,int ,int *) ;
 int uiControl (int *) ;
 int uiEntryOnChanged (int *,int ,int *) ;
 int * uiNewButton (char*) ;
 int * uiNewCheckbox (char*) ;
 int * uiNewEntry () ;
 int * uiNewLabel (char*) ;

void makePage1(uiWindow *w)
{
 uiButton *getButton, *setButton;
 uiBox *hbox;
 uiBox *testBox;
 uiLabel *label;

 page1 = newVerticalBox();

 entry = uiNewEntry();
 uiEntryOnChanged(entry, onChanged, ((void*)0));
 uiBoxAppend(page1, uiControl(entry), 0);

 spaced = uiNewCheckbox("Spaced");
 uiCheckboxOnToggled(spaced, toggleSpaced, ((void*)0));
 label = uiNewLabel("Label");

 hbox = newHorizontalBox();
 getButton = uiNewButton("Get Window Text");
 uiButtonOnClicked(getButton, getWindowText, w);
 setButton = uiNewButton("Set Window Text");
 uiButtonOnClicked(setButton, setWindowText, w);
 uiBoxAppend(hbox, uiControl(getButton), 1);
 uiBoxAppend(hbox, uiControl(setButton), 1);
 uiBoxAppend(page1, uiControl(hbox), 0);

 hbox = newHorizontalBox();
 getButton = uiNewButton("Get Button Text");
 uiButtonOnClicked(getButton, getButtonText, getButton);
 setButton = uiNewButton("Set Button Text");
 uiButtonOnClicked(setButton, setButtonText, getButton);
 uiBoxAppend(hbox, uiControl(getButton), 1);
 uiBoxAppend(hbox, uiControl(setButton), 1);
 uiBoxAppend(page1, uiControl(hbox), 0);

 hbox = newHorizontalBox();
 getButton = uiNewButton("Get Checkbox Text");
 uiButtonOnClicked(getButton, getCheckboxText, spaced);
 setButton = uiNewButton("Set Checkbox Text");
 uiButtonOnClicked(setButton, setCheckboxText, spaced);
 uiBoxAppend(hbox, uiControl(getButton), 1);
 uiBoxAppend(hbox, uiControl(setButton), 1);
 uiBoxAppend(page1, uiControl(hbox), 0);

 hbox = newHorizontalBox();
 getButton = uiNewButton("Get Label Text");
 uiButtonOnClicked(getButton, getLabelText, label);
 setButton = uiNewButton("Set Label Text");
 uiButtonOnClicked(setButton, setLabelText, label);
 uiBoxAppend(hbox, uiControl(getButton), 1);
 uiBoxAppend(hbox, uiControl(setButton), 1);
 uiBoxAppend(page1, uiControl(hbox), 0);

 hbox = newHorizontalBox();
 getButton = uiNewButton("Get Group Text");
 uiButtonOnClicked(getButton, getGroupText, page2group);
 setButton = uiNewButton("Set Group Text");
 uiButtonOnClicked(setButton, setGroupText, page2group);
 uiBoxAppend(hbox, uiControl(getButton), 1);
 uiBoxAppend(hbox, uiControl(setButton), 1);
 uiBoxAppend(page1, uiControl(hbox), 0);

 hbox = newHorizontalBox();
 uiBoxAppend(hbox, uiControl(spaced), 1);
 getButton = uiNewButton("On");
 uiButtonOnClicked(getButton, forceSpaced, getButton);
 uiBoxAppend(hbox, uiControl(getButton), 0);
 getButton = uiNewButton("Off");
 uiButtonOnClicked(getButton, forceSpaced, ((void*)0));
 uiBoxAppend(hbox, uiControl(getButton), 0);
 getButton = uiNewButton("Show");
 uiButtonOnClicked(getButton, showSpaced, ((void*)0));
 uiBoxAppend(hbox, uiControl(getButton), 0);
 uiBoxAppend(page1, uiControl(hbox), 0);

 testBox = newHorizontalBox();
 setButton = uiNewButton("Button");
 uiBoxAppend(testBox, uiControl(setButton), 1);
 getButton = uiNewButton("Show");
 uiButtonOnClicked(getButton, showControl, setButton);
 uiBoxAppend(testBox, uiControl(getButton), 0);
 getButton = uiNewButton("Hide");
 uiButtonOnClicked(getButton, hideControl, setButton);
 uiBoxAppend(testBox, uiControl(getButton), 0);
 getButton = uiNewButton("Enable");
 uiButtonOnClicked(getButton, enableControl, setButton);
 uiBoxAppend(testBox, uiControl(getButton), 0);
 getButton = uiNewButton("Disable");
 uiButtonOnClicked(getButton, disableControl, setButton);
 uiBoxAppend(testBox, uiControl(getButton), 0);
 uiBoxAppend(page1, uiControl(testBox), 0);

 hbox = newHorizontalBox();
 getButton = uiNewButton("Show Box");
 uiButtonOnClicked(getButton, showControl, testBox);
 uiBoxAppend(hbox, uiControl(getButton), 1);
 getButton = uiNewButton("Hide Box");
 uiButtonOnClicked(getButton, hideControl, testBox);
 uiBoxAppend(hbox, uiControl(getButton), 1);
 getButton = uiNewButton("Enable Box");
 uiButtonOnClicked(getButton, enableControl, testBox);
 uiBoxAppend(hbox, uiControl(getButton), 1);
 getButton = uiNewButton("Disable Box");
 uiButtonOnClicked(getButton, disableControl, testBox);
 uiBoxAppend(hbox, uiControl(getButton), 1);
 uiBoxAppend(page1, uiControl(hbox), 0);

 uiBoxAppend(page1, uiControl(label), 0);
}
