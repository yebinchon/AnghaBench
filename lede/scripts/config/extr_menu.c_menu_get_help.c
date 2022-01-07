
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct menu {char const* help; } ;



const char *menu_get_help(struct menu *menu)
{
 if (menu->help)
  return menu->help;
 else
  return "";
}
