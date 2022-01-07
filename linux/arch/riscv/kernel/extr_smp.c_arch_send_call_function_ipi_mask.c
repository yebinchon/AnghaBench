
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpumask {int dummy; } ;


 int IPI_CALL_FUNC ;
 int send_ipi_mask (struct cpumask*,int ) ;

void arch_send_call_function_ipi_mask(struct cpumask *mask)
{
 send_ipi_mask(mask, IPI_CALL_FUNC);
}
