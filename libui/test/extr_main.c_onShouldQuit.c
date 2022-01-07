
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*) ;
 int shouldQuitItem ;
 int uiControl (void*) ;
 int uiControlDestroy (int ) ;
 scalar_t__ uiMenuItemChecked (int ) ;

int onShouldQuit(void *data)
{
 printf("in onShouldQuit()\n");
 if (uiMenuItemChecked(shouldQuitItem)) {
  uiControlDestroy(uiControl(data));
  return 1;
 }
 return 0;
}
