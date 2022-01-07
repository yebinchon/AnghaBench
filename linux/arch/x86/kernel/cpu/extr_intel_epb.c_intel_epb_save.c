
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int EPB_MASK ;
 int EPB_SAVED ;
 int MSR_IA32_ENERGY_PERF_BIAS ;
 int rdmsrl (int ,int) ;
 int saved_epb ;
 int this_cpu_write (int ,int) ;

__attribute__((used)) static int intel_epb_save(void)
{
 u64 epb;

 rdmsrl(MSR_IA32_ENERGY_PERF_BIAS, epb);




 this_cpu_write(saved_epb, (epb & EPB_MASK) | EPB_SAVED);

 return 0;
}
