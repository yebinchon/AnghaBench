
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct msr {int dummy; } ;
struct cpumask {int dummy; } ;


 int __rwmsr_on_cpus (struct cpumask const*,int ,struct msr*,int ) ;
 int __wrmsr_on_cpu ;

void wrmsr_on_cpus(const struct cpumask *mask, u32 msr_no, struct msr *msrs)
{
 __rwmsr_on_cpus(mask, msr_no, msrs, __wrmsr_on_cpu);
}
