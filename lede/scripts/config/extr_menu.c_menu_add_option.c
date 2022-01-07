
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* sym; } ;
struct TYPE_4__ {int flags; int name; } ;


 int SYMBOL_ALLNOCONFIG_Y ;




 TYPE_3__* current_entry ;
 TYPE_1__* modules_sym ;
 int prop_add_env (char*) ;
 TYPE_1__* sym_defconfig_list ;
 int zconf_error (char*,...) ;

void menu_add_option(int token, char *arg)
{
 switch (token) {
 case 128:
  if (modules_sym)
   zconf_error("symbol '%s' redefines option 'modules'"
        " already defined by symbol '%s'",
        current_entry->sym->name,
        modules_sym->name
        );
  modules_sym = current_entry->sym;
  break;
 case 130:
  if (!sym_defconfig_list)
   sym_defconfig_list = current_entry->sym;
  else if (sym_defconfig_list != current_entry->sym)
   zconf_error("trying to redefine defconfig symbol");
  break;
 case 129:
  prop_add_env(arg);
  break;
 case 131:
  current_entry->sym->flags |= SYMBOL_ALLNOCONFIG_Y;
  break;
 }
}
