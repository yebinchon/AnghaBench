
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int dummy; } ;


 int deregister_unwind_table (struct module*) ;

void module_arch_cleanup(struct module *mod)
{
 deregister_unwind_table(mod);
}
