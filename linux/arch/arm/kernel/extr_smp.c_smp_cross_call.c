
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpumask {int dummy; } ;


 int __smp_cross_call (struct cpumask const*,unsigned int) ;
 int * ipi_types ;
 int trace_ipi_raise_rcuidle (struct cpumask const*,int ) ;

__attribute__((used)) static void smp_cross_call(const struct cpumask *target, unsigned int ipinr)
{
 trace_ipi_raise_rcuidle(target, ipi_types[ipinr]);
 __smp_cross_call(target, ipinr);
}
