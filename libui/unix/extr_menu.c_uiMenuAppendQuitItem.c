
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiMenuItem ;
typedef int uiMenu ;


 scalar_t__ TRUE ;
 scalar_t__ hasQuit ;
 int * newItem (int *,int ,int *) ;
 int typeQuit ;
 int typeSeparator ;
 int uiprivUserBug (char*) ;

uiMenuItem *uiMenuAppendQuitItem(uiMenu *m)
{
 if (hasQuit)
  uiprivUserBug("You cannot have multiple Quit menu items in the same program.");
 hasQuit = TRUE;
 newItem(m, typeSeparator, ((void*)0));
 return newItem(m, typeQuit, ((void*)0));
}
