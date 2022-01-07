
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * cpu_foreign_map ;
 int preempt_disable () ;
 int preempt_enable () ;
 scalar_t__ r4k_op_needs_ipi (unsigned int) ;
 int smp_call_function_many (int *,void (*) (void*),void*,int) ;
 size_t smp_processor_id () ;

__attribute__((used)) static inline void r4k_on_each_cpu(unsigned int type,
       void (*func)(void *info), void *info)
{
 preempt_disable();
 if (r4k_op_needs_ipi(type))
  smp_call_function_many(&cpu_foreign_map[smp_processor_id()],
           func, info, 1);
 func(info);
 preempt_enable();
}
