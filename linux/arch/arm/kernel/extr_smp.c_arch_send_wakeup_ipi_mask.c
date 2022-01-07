
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpumask {int dummy; } ;


 int IPI_WAKEUP ;
 int smp_cross_call (struct cpumask const*,int ) ;

void arch_send_wakeup_ipi_mask(const struct cpumask *mask)
{
 smp_cross_call(mask, IPI_WAKEUP);
}
