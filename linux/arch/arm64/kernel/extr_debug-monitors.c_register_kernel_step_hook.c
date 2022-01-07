
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct step_hook {int node; } ;


 int kernel_step_hook ;
 int register_debug_hook (int *,int *) ;

void register_kernel_step_hook(struct step_hook *hook)
{
 register_debug_hook(&hook->node, &kernel_step_hook);
}
