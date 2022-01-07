
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int dummy; } ;


 int module_dwarf_cleanup (struct module*) ;

void module_arch_cleanup(struct module *mod)
{
 module_dwarf_cleanup(mod);
}
