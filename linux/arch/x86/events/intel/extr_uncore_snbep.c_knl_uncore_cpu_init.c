
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int knl_msr_uncores ;
 int uncore_msr_uncores ;

void knl_uncore_cpu_init(void)
{
 uncore_msr_uncores = knl_msr_uncores;
}
