
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct break_hook {int node; } ;


 int kernel_break_hook ;
 int register_debug_hook (int *,int *) ;

void register_kernel_break_hook(struct break_hook *hook)
{
 register_debug_hook(&hook->node, &kernel_break_hook);
}
