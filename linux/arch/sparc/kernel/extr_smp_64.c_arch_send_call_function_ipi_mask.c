
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct cpumask {int dummy; } ;


 int xcall_call_function ;
 int xcall_deliver (int ,int ,int ,struct cpumask const*) ;

void arch_send_call_function_ipi_mask(const struct cpumask *mask)
{
 xcall_deliver((u64) &xcall_call_function, 0, 0, mask);
}
