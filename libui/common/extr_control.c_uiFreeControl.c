
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiControl ;


 int * uiControlParent (int *) ;
 int uiprivFree (int *) ;
 int uiprivUserBug (char*,int *) ;

void uiFreeControl(uiControl *c)
{
 if (uiControlParent(c) != ((void*)0))
  uiprivUserBug("You cannot destroy a uiControl while it still has a parent. (control: %p)", c);
 uiprivFree(c);
}
