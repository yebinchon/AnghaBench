
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mainwin ;
 int uiControl (int ) ;
 int uiControlDestroy (int ) ;

__attribute__((used)) static int shouldQuit(void *data)
{
 uiControlDestroy(uiControl(mainwin));
 return 1;
}
