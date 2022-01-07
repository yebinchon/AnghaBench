
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int nhm_msr_uncores ;
 int uncore_msr_uncores ;

void nhm_uncore_cpu_init(void)
{
 uncore_msr_uncores = nhm_msr_uncores;
}
