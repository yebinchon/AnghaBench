
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiTab ;
typedef int uiInitOptions ;


 int fprintf (int ,char*,char const*) ;
 int * mainwin ;
 int makeBasicControlsPage () ;
 int makeDataChoosersPage () ;
 int makeNumbersPage () ;
 int memset (int *,int ,int) ;
 int onClosing ;
 int onShouldQuit ;
 int stderr ;
 int uiControl (int *) ;
 int uiControlShow (int ) ;
 int uiFreeInitError (char const*) ;
 char* uiInit (int *) ;
 int uiMain () ;
 int * uiNewTab () ;
 int * uiNewWindow (char*,int,int,int) ;
 int uiOnShouldQuit (int ,int *) ;
 int uiTabAppend (int *,char*,int ) ;
 int uiTabSetMargined (int *,int,int) ;
 int uiWindowOnClosing (int *,int ,int *) ;
 int uiWindowSetChild (int *,int ) ;
 int uiWindowSetMargined (int *,int) ;

int main(void)
{
 uiInitOptions options;
 const char *err;
 uiTab *tab;

 memset(&options, 0, sizeof (uiInitOptions));
 err = uiInit(&options);
 if (err != ((void*)0)) {
  fprintf(stderr, "error initializing libui: %s", err);
  uiFreeInitError(err);
  return 1;
 }

 mainwin = uiNewWindow("libui Control Gallery", 640, 480, 1);
 uiWindowOnClosing(mainwin, onClosing, ((void*)0));
 uiOnShouldQuit(onShouldQuit, mainwin);

 tab = uiNewTab();
 uiWindowSetChild(mainwin, uiControl(tab));
 uiWindowSetMargined(mainwin, 1);

 uiTabAppend(tab, "Basic Controls", makeBasicControlsPage());
 uiTabSetMargined(tab, 0, 1);

 uiTabAppend(tab, "Numbers and Lists", makeNumbersPage());
 uiTabSetMargined(tab, 1, 1);

 uiTabAppend(tab, "Data Choosers", makeDataChoosersPage());
 uiTabSetMargined(tab, 2, 1);

 uiControlShow(uiControl(mainwin));
 uiMain();
 return 0;
}
