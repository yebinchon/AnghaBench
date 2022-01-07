
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiWindow ;
typedef int uiButton ;
typedef int uiBox ;


 int * makePage6 () ;
 int uiBoxAppend (int *,int ,int ) ;
 int uiBoxSetPadded (int *,int) ;
 int uiControl (int *) ;
 int uiControlShow (int ) ;
 int * uiNewButton (char*) ;
 int * uiNewEntry () ;
 int * uiNewVerticalBox () ;
 int * uiNewWindow (char*,int,int,int ) ;
 int uiWindowSetChild (int *,int ) ;
 int uiWindowSetMargined (int *,int) ;

__attribute__((used)) static void openAnotherWindow(uiButton *bb, void *data)
{
 uiWindow *w;
 uiBox *b;

 w = uiNewWindow("Another Window", 100, 100, data != ((void*)0));
 if (data != ((void*)0)) {
  b = uiNewVerticalBox();
  uiBoxAppend(b, uiControl(uiNewEntry()), 0);
  uiBoxAppend(b, uiControl(uiNewButton("Button")), 0);
  uiBoxSetPadded(b, 1);
  uiWindowSetChild(w, uiControl(b));
 } else
  uiWindowSetChild(w, uiControl(makePage6()));
 uiWindowSetMargined(w, 1);
 uiControlShow(uiControl(w));
}
