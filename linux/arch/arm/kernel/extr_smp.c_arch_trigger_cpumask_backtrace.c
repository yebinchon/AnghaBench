
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cpumask_t ;


 int nmi_trigger_cpumask_backtrace (int const*,int,int ) ;
 int raise_nmi ;

void arch_trigger_cpumask_backtrace(const cpumask_t *mask, bool exclude_self)
{
 nmi_trigger_cpumask_backtrace(mask, exclude_self, raise_nmi);
}
