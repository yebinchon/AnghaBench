
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiWindow ;
typedef int uiLabel ;
typedef int uiButton ;
typedef int uiBox ;


 int D (char*,int ) ;
 int * description ;
 int msgBox ;
 int msgBoxError ;
 int * newHorizontalBox () ;
 int * newVerticalBox () ;
 int openFile ;
 int * parent ;
 int saveFile ;
 int * title ;
 int uiBoxAppend (int *,int ,int ) ;
 int uiButtonOnClicked (int *,int ,int *) ;
 int uiControl (int *) ;
 int uiEntrySetText (int *,char*) ;
 int * uiNewButton (char*) ;
 int * uiNewEntry () ;

uiBox *makePage5(uiWindow *pw)
{
 uiBox *page5;
 uiBox *hbox;
 uiButton *button;
 uiLabel *label;

 parent = pw;

 page5 = newVerticalBox();
 hbox = newHorizontalBox(); button = uiNewButton("Open File"); label = uiNewLabel(""); uiButtonOnClicked(button, openFile, label); uiBoxAppend(hbox, uiControl(button), 0); uiBoxAppend(hbox, uiControl(label), 0); uiBoxAppend(page5, uiControl(hbox), 0);;
 hbox = newHorizontalBox(); button = uiNewButton("Save File"); label = uiNewLabel(""); uiButtonOnClicked(button, saveFile, label); uiBoxAppend(hbox, uiControl(button), 0); uiBoxAppend(hbox, uiControl(label), 0); uiBoxAppend(page5, uiControl(hbox), 0);;

 title = uiNewEntry();
 uiEntrySetText(title, "Title");
 description = uiNewEntry();
 uiEntrySetText(description, "Description");

 hbox = newHorizontalBox();
 button = uiNewButton("Message Box");
 uiButtonOnClicked(button, msgBox, ((void*)0));
 uiBoxAppend(hbox, uiControl(button), 0);
 uiBoxAppend(hbox, uiControl(title), 0);
 uiBoxAppend(page5, uiControl(hbox), 0);

 hbox = newHorizontalBox();
 button = uiNewButton("Error Box");
 uiButtonOnClicked(button, msgBoxError, ((void*)0));
 uiBoxAppend(hbox, uiControl(button), 0);
 uiBoxAppend(hbox, uiControl(description), 0);
 uiBoxAppend(page5, uiControl(hbox), 0);

 return page5;
}
