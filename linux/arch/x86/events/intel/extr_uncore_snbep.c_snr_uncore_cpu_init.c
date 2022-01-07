
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int snr_msr_uncores ;
 int uncore_msr_uncores ;

void snr_uncore_cpu_init(void)
{
 uncore_msr_uncores = snr_msr_uncores;
}
