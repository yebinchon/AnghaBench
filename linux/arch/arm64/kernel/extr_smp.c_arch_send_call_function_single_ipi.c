
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IPI_CALL_FUNC ;
 int cpumask_of (int) ;
 int smp_cross_call (int ,int ) ;

void arch_send_call_function_single_ipi(int cpu)
{
 smp_cross_call(cpumask_of(cpu), IPI_CALL_FUNC);
}
