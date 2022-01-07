
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * syminfo; } ;
struct module {scalar_t__ state; TYPE_1__ arch; } ;


 scalar_t__ MODULE_STATE_LIVE ;
 scalar_t__ is_livepatch_module (struct module*) ;
 int vfree (int *) ;

void module_arch_freeing_init(struct module *mod)
{
 if (is_livepatch_module(mod) &&
     mod->state == MODULE_STATE_LIVE)
  return;

 vfree(mod->arch.syminfo);
 mod->arch.syminfo = ((void*)0);
}
