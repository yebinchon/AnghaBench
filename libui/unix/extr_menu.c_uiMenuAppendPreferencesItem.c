
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiMenuItem ;
typedef int uiMenu ;


 scalar_t__ TRUE ;
 scalar_t__ hasPreferences ;
 int * newItem (int *,int ,int *) ;
 int typePreferences ;
 int typeSeparator ;
 int uiprivUserBug (char*) ;

uiMenuItem *uiMenuAppendPreferencesItem(uiMenu *m)
{
 if (hasPreferences)
  uiprivUserBug("You cannot have multiple Preferences menu items in the same program.");
 hasPreferences = TRUE;
 newItem(m, typeSeparator, ((void*)0));
 return newItem(m, typePreferences, ((void*)0));
}
