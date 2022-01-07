
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiMultilineEntry ;
typedef int uiGroup ;
typedef int uiButton ;
typedef int uiBox ;


 int * newGroup (char*) ;
 int * newHorizontalBox () ;
 int * newVerticalBox () ;
 int onListFonts ;
 int uiBoxAppend (int *,int ,int) ;
 int uiButtonOnClicked (int *,int ,int *) ;
 int uiControl (int *) ;
 int uiGroupSetChild (int *,int ) ;
 int * uiNewButton (char*) ;
 int * uiNewMultilineEntry () ;

uiBox *makePage8(void)
{
 uiBox *page8;
 uiGroup *group;
 uiBox *vbox;
 uiMultilineEntry *me;
 uiButton *button;

 page8 = newHorizontalBox();

 group = newGroup("Font Families");
 uiBoxAppend(page8, uiControl(group), 1);

 vbox = newVerticalBox();
 uiGroupSetChild(group, uiControl(vbox));

 me = uiNewMultilineEntry();
 uiBoxAppend(vbox, uiControl(me), 1);

 button = uiNewButton("List Font Families");
 uiButtonOnClicked(button, onListFonts, me);
 uiBoxAppend(vbox, uiControl(button), 0);

 return page8;
}
