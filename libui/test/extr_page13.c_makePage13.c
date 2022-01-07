
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiRadioButtons ;
typedef int uiProgressBar ;
typedef int uiForm ;
typedef int uiEntry ;
typedef int uiButton ;
typedef int uiBox ;


 int buttonClicked ;
 int deleteFirst ;
 int entryChanged ;
 int * newForm () ;
 int * newVerticalBox () ;
 int setIndeterminate ;
 int showHide ;
 int uiBoxAppend (int *,int ,int) ;
 int uiButtonOnClicked (int *,int ,int *) ;
 int uiControl (int *) ;
 int uiEntryOnChanged (int *,int ,char*) ;
 int uiFormAppend (int *,char*,int ,int) ;
 int * uiNewButton (char*) ;
 int * uiNewHorizontalBox ;
 int * uiNewMultilineEntry () ;
 int * uiNewPasswordEntry () ;
 int * uiNewProgressBar () ;
 int * uiNewRadioButtons () ;
 int * uiNewSearchEntry () ;
 int * uiNewVerticalBox ;
 int uiProgressBarSetValue (int *,int) ;
 int uiRadioButtonsAppend (int *,char*) ;

uiBox *makePage13(void)
{
 uiBox *page13;
 uiRadioButtons *rb;
 uiButton *b;
 uiForm *f;
 uiEntry *e;
 uiProgressBar *p;

 page13 = newVerticalBox();

 rb = uiNewRadioButtons();
 uiRadioButtonsAppend(rb, "Item 1");
 uiRadioButtonsAppend(rb, "Item 2");
 uiRadioButtonsAppend(rb, "Item 3");
 uiBoxAppend(page13, uiControl(rb), 0);

 rb = uiNewRadioButtons();
 uiRadioButtonsAppend(rb, "Item A");
 uiRadioButtonsAppend(rb, "Item B");
 uiBoxAppend(page13, uiControl(rb), 0);

 b = uiNewButton("Horizontal");
 uiButtonOnClicked(b, buttonClicked, uiNewHorizontalBox);
 uiBoxAppend(page13, uiControl(b), 0);

 b = uiNewButton("Vertical");
 uiButtonOnClicked(b, buttonClicked, uiNewVerticalBox);
 uiBoxAppend(page13, uiControl(b), 0);

 f = newForm();

 e = uiNewPasswordEntry();
 uiEntryOnChanged(e, entryChanged, "password");
 uiFormAppend(f, "Password Entry", uiControl(e), 0);

 e = uiNewSearchEntry();
 uiEntryOnChanged(e, entryChanged, "search");
 uiFormAppend(f, "Search Box", uiControl(e), 0);

 uiFormAppend(f, "MLE", uiControl(uiNewMultilineEntry()), 1);

 p = uiNewProgressBar();
 uiProgressBarSetValue(p, 50);
 uiBoxAppend(page13, uiControl(p), 0);
 b = uiNewButton("Toggle Indeterminate");
 uiButtonOnClicked(b, setIndeterminate, p);
 uiBoxAppend(page13, uiControl(b), 0);

 b = uiNewButton("Show/Hide");
 uiButtonOnClicked(b, showHide, e);
 uiBoxAppend(page13, uiControl(b), 0);
 b = uiNewButton("Delete First");
 uiButtonOnClicked(b, deleteFirst, f);
 uiBoxAppend(page13, uiControl(b), 0);
 uiBoxAppend(page13, uiControl(f), 1);

 return page13;
}
