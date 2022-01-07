
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiTab ;
typedef int uiGroup ;
typedef int uiEntry ;
typedef int uiButton ;
typedef int uiBox ;


 int disableControl ;
 int echoReadOnlyText ;
 int enableControl ;
 scalar_t__ moveBack ;
 int moveLabel ;
 char* moveOutText ;
 int movePage1 ;
 int ** movingBoxes ;
 size_t movingCurrent ;
 int * movingLabel ;
 int * newGroup (char*) ;
 int * newHorizontalBox () ;
 int * newTab () ;
 int * newVerticalBox () ;
 int openAnotherDisabledWindow ;
 int openAnotherWindow ;
 int * page2group ;
 int showControl ;
 int uiBoxAppend (int *,int ,int) ;
 int uiButtonOnClicked (int *,int ,int *) ;
 int uiControl (int *) ;
 int uiControlDisable (int ) ;
 int uiControlHide (int ) ;
 int uiEntryOnChanged (int *,int ,int *) ;
 scalar_t__ uiEntryReadOnly (int *) ;
 int uiEntrySetReadOnly (int *,int) ;
 int uiEntrySetText (int *,char*) ;
 int uiGroupSetChild (int *,int ) ;
 int * uiNewButton (char*) ;
 int * uiNewEntry () ;
 int * uiNewLabel (char*) ;
 int uiTabAppend (int *,char*,int ) ;

uiBox *makePage2(void)
{
 uiBox *page2;
 uiBox *hbox;
 uiGroup *group;
 uiBox *vbox;
 uiButton *button;
 uiBox *nestedBox;
 uiBox *innerhbox;
 uiBox *innerhbox2;
 uiBox *innerhbox3;
 uiTab *disabledTab;
 uiEntry *entry;
 uiEntry *readonly;
 uiButton *button2;

 page2 = newVerticalBox();

 group = newGroup("Moving Label");
 page2group = group;
 uiBoxAppend(page2, uiControl(group), 0);
 vbox = newVerticalBox();
 uiGroupSetChild(group, uiControl(vbox));

 hbox = newHorizontalBox();
 button = uiNewButton("Move the Label!");
 uiButtonOnClicked(button, moveLabel, ((void*)0));
 uiBoxAppend(hbox, uiControl(button), 1);

 uiBoxAppend(hbox, uiControl(uiNewLabel("")), 1);
 uiBoxAppend(vbox, uiControl(hbox), 0);

 hbox = newHorizontalBox();
 movingBoxes[0] = newVerticalBox();
 uiBoxAppend(hbox, uiControl(movingBoxes[0]), 1);
 movingBoxes[1] = newVerticalBox();
 uiBoxAppend(hbox, uiControl(movingBoxes[1]), 1);
 uiBoxAppend(vbox, uiControl(hbox), 0);

 movingCurrent = 0;
 movingLabel = uiNewLabel("This label moves!");
 uiBoxAppend(movingBoxes[movingCurrent], uiControl(movingLabel), 0);

 hbox = newHorizontalBox();
 button = uiNewButton(moveOutText);
 uiButtonOnClicked(button, movePage1, ((void*)0));
 uiBoxAppend(hbox, uiControl(button), 0);
 uiBoxAppend(page2, uiControl(hbox), 0);
 moveBack = 0;

 hbox = newHorizontalBox();
 uiBoxAppend(hbox, uiControl(uiNewLabel("Label Alignment Test")), 0);
 button = uiNewButton("Open Menued Window");
 uiButtonOnClicked(button, openAnotherWindow, button);
 uiBoxAppend(hbox, uiControl(button), 0);
 button = uiNewButton("Open Menuless Window");
 uiButtonOnClicked(button, openAnotherWindow, ((void*)0));
 uiBoxAppend(hbox, uiControl(button), 0);
 button = uiNewButton("Disabled Menued");
 uiButtonOnClicked(button, openAnotherDisabledWindow, button);
 uiBoxAppend(hbox, uiControl(button), 0);
 button = uiNewButton("Disabled Menuless");
 uiButtonOnClicked(button, openAnotherDisabledWindow, ((void*)0));
 uiBoxAppend(hbox, uiControl(button), 0);
 uiBoxAppend(page2, uiControl(hbox), 0);

 nestedBox = newHorizontalBox();
 innerhbox = newHorizontalBox();
 uiBoxAppend(innerhbox, uiControl(uiNewButton("These")), 0);
 button = uiNewButton("buttons");
 uiControlDisable(uiControl(button));
 uiBoxAppend(innerhbox, uiControl(button), 0);
 uiBoxAppend(nestedBox, uiControl(innerhbox), 0);
 innerhbox = newHorizontalBox();
 uiBoxAppend(innerhbox, uiControl(uiNewButton("are")), 0);
 innerhbox2 = newHorizontalBox();
 button = uiNewButton("in");
 uiControlDisable(uiControl(button));
 uiBoxAppend(innerhbox2, uiControl(button), 0);
 uiBoxAppend(innerhbox, uiControl(innerhbox2), 0);
 uiBoxAppend(nestedBox, uiControl(innerhbox), 0);
 innerhbox = newHorizontalBox();
 innerhbox2 = newHorizontalBox();
 uiBoxAppend(innerhbox2, uiControl(uiNewButton("nested")), 0);
 innerhbox3 = newHorizontalBox();
 button = uiNewButton("boxes");
 uiControlDisable(uiControl(button));
 uiBoxAppend(innerhbox3, uiControl(button), 0);
 uiBoxAppend(innerhbox2, uiControl(innerhbox3), 0);
 uiBoxAppend(innerhbox, uiControl(innerhbox2), 0);
 uiBoxAppend(nestedBox, uiControl(innerhbox), 0);
 uiBoxAppend(page2, uiControl(nestedBox), 0);

 hbox = newHorizontalBox();
 button = uiNewButton("Enable Nested Box");
 uiButtonOnClicked(button, enableControl, nestedBox);
 uiBoxAppend(hbox, uiControl(button), 0);
 button = uiNewButton("Disable Nested Box");
 uiButtonOnClicked(button, disableControl, nestedBox);
 uiBoxAppend(hbox, uiControl(button), 0);
 uiBoxAppend(page2, uiControl(hbox), 0);

 disabledTab = newTab();
 uiTabAppend(disabledTab, "Disabled", uiControl(uiNewButton("Button")));
 uiTabAppend(disabledTab, "Tab", uiControl(uiNewLabel("Label")));
 uiControlDisable(uiControl(disabledTab));
 uiBoxAppend(page2, uiControl(disabledTab), 1);

 entry = uiNewEntry();
 readonly = uiNewEntry();
 uiEntryOnChanged(entry, echoReadOnlyText, readonly);
 uiEntrySetText(readonly, "If you can see this, uiEntryReadOnly() isn't working properly.");
 uiEntrySetReadOnly(readonly, 1);
 if (uiEntryReadOnly(readonly))
  uiEntrySetText(readonly, "");
 uiBoxAppend(page2, uiControl(entry), 0);
 uiBoxAppend(page2, uiControl(readonly), 0);

 hbox = newHorizontalBox();
 button = uiNewButton("Show Button 2");
 button2 = uiNewButton("Button 2");
 uiButtonOnClicked(button, showControl, button2);
 uiControlHide(uiControl(button2));
 uiBoxAppend(hbox, uiControl(button), 1);
 uiBoxAppend(hbox, uiControl(button2), 0);
 uiBoxAppend(page2, uiControl(hbox), 0);

 return page2;
}
