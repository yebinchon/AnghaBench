
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiWindow ;
typedef int uiButton ;


 int uiControl (int *) ;
 int uiControlDisable (int ) ;
 int uiControlShow (int ) ;
 int * uiNewWindow (char*,int,int,int ) ;

__attribute__((used)) static void openAnotherDisabledWindow(uiButton *b, void *data)
{
 uiWindow *w;

 w = uiNewWindow("Another Window", 100, 100, data != ((void*)0));
 uiControlDisable(uiControl(w));
 uiControlShow(uiControl(w));
}
