
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int ARRAY_SIZE (int *) ;
 int BUG () ;
 int __soft_restart ;
 int call_with_stack (int ,void*,void*) ;
 int local_fiq_disable () ;
 int outer_disable () ;
 int raw_local_irq_disable () ;
 int * soft_restart_stack ;

void _soft_restart(unsigned long addr, bool disable_l2)
{
 u64 *stack = soft_restart_stack + ARRAY_SIZE(soft_restart_stack);


 raw_local_irq_disable();
 local_fiq_disable();


 if (disable_l2)
  outer_disable();


 call_with_stack(__soft_restart, (void *)addr, (void *)stack);


 BUG();
}
