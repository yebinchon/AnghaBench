
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiMenuItem ;
typedef int uiMenu ;


 scalar_t__ TRUE ;
 scalar_t__ hasAbout ;
 int * newItem (int *,int ,int *) ;
 int typeAbout ;
 int typeSeparator ;
 int uiprivUserBug (char*) ;

uiMenuItem *uiMenuAppendAboutItem(uiMenu *m)
{
 if (hasAbout)
  uiprivUserBug("You cannot have multiple About menu items in the same program.");
 hasAbout = TRUE;
 newItem(m, typeSeparator, ((void*)0));
 return newItem(m, typeAbout, ((void*)0));
}
