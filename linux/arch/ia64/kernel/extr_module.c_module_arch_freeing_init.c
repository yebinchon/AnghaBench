
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * init_unw_table; } ;
struct module {TYPE_1__ arch; } ;


 int unw_remove_unwind_table (int *) ;

void
module_arch_freeing_init (struct module *mod)
{
 if (mod->arch.init_unw_table) {
  unw_remove_unwind_table(mod->arch.init_unw_table);
  mod->arch.init_unw_table = ((void*)0);
 }
}
