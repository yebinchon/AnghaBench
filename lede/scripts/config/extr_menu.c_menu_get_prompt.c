
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct menu {TYPE_2__* sym; TYPE_1__* prompt; } ;
struct TYPE_4__ {char const* name; } ;
struct TYPE_3__ {char const* text; } ;



const char *menu_get_prompt(struct menu *menu)
{
 if (menu->prompt)
  return menu->prompt->text;
 else if (menu->sym)
  return menu->sym->name;
 return ((void*)0);
}
