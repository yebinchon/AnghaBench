
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int cpumask_of (int) ;
 int xcall_call_function_single ;
 int xcall_deliver (int ,int ,int ,int ) ;

void arch_send_call_function_single_ipi(int cpu)
{
 xcall_deliver((u64) &xcall_call_function_single, 0, 0,
        cpumask_of(cpu));
}
