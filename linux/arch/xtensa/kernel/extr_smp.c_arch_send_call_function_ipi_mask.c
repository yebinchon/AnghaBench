
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpumask {int dummy; } ;


 int IPI_CALL_FUNC ;
 int send_ipi_message (struct cpumask const*,int ) ;

void arch_send_call_function_ipi_mask(const struct cpumask *mask)
{
 send_ipi_message(mask, IPI_CALL_FUNC);
}
