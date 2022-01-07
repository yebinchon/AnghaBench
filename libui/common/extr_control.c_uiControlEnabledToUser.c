
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiControl ;


 int uiControlEnabled (int *) ;
 int * uiControlParent (int *) ;

int uiControlEnabledToUser(uiControl *c)
{
 while (c != ((void*)0)) {
  if (!uiControlEnabled(c))
   return 0;
  c = uiControlParent(c);
 }
 return 1;
}
