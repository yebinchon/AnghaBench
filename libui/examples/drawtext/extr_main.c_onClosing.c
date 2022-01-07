
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiWindow ;


 int mainwin ;
 int uiControl (int ) ;
 int uiControlDestroy (int ) ;
 int uiQuit () ;

__attribute__((used)) static int onClosing(uiWindow *w, void *data)
{
 uiControlDestroy(uiControl(mainwin));
 uiQuit();
 return 0;
}
