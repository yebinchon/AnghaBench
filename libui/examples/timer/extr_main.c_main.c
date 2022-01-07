
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiWindow ;
typedef int uiInitOptions ;
typedef int uiButton ;
typedef int uiBox ;


 int abort () ;
 int * e ;
 int memset (int *,int ,int) ;
 int onClosing ;
 int saySomething ;
 int sayTime ;
 int uiBoxAppend (int *,int ,int) ;
 int uiBoxSetPadded (int *,int) ;
 int uiButtonOnClicked (int *,int ,int *) ;
 int uiControl (int *) ;
 int uiControlShow (int ) ;
 int * uiInit (int *) ;
 int uiMain () ;
 int uiMultilineEntrySetReadOnly (int *,int) ;
 int * uiNewButton (char*) ;
 int * uiNewMultilineEntry () ;
 int * uiNewVerticalBox () ;
 int * uiNewWindow (char*,int,int,int ) ;
 int uiTimer (int,int ,int *) ;
 int uiWindowOnClosing (int *,int ,int *) ;
 int uiWindowSetChild (int *,int ) ;
 int uiWindowSetMargined (int *,int) ;

int main(void)
{
 uiInitOptions o;
 uiWindow *w;
 uiBox *b;
 uiButton *btn;

 memset(&o, 0, sizeof (uiInitOptions));
 if (uiInit(&o) != ((void*)0))
  abort();

 w = uiNewWindow("Hello", 320, 240, 0);
 uiWindowSetMargined(w, 1);

 b = uiNewVerticalBox();
 uiBoxSetPadded(b, 1);
 uiWindowSetChild(w, uiControl(b));

 e = uiNewMultilineEntry();
 uiMultilineEntrySetReadOnly(e, 1);

 btn = uiNewButton("Say Something");
 uiButtonOnClicked(btn, saySomething, ((void*)0));
 uiBoxAppend(b, uiControl(btn), 0);

 uiBoxAppend(b, uiControl(e), 1);

 uiTimer(1000, sayTime, ((void*)0));

 uiWindowOnClosing(w, onClosing, ((void*)0));
 uiControlShow(uiControl(w));
 uiMain();
 return 0;
}
