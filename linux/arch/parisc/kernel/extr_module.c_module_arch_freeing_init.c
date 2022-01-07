
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * section; } ;
struct module {TYPE_1__ arch; } ;


 int kfree (int *) ;

void module_arch_freeing_init(struct module *mod)
{
 kfree(mod->arch.section);
 mod->arch.section = ((void*)0);
}
