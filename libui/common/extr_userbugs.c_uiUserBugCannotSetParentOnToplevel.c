
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int uiprivUserBug (char*,char const*) ;

void uiUserBugCannotSetParentOnToplevel(const char *type)
{
 uiprivUserBug("You cannot make a %s a child of another uiControl,", type);
}
