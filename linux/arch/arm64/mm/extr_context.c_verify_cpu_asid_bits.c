
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ asid_bits ;
 int cpu_panic_kernel () ;
 scalar_t__ get_cpu_asid_bits () ;
 int pr_crit (char*,int ,scalar_t__,scalar_t__) ;
 int smp_processor_id () ;

void verify_cpu_asid_bits(void)
{
 u32 asid = get_cpu_asid_bits();

 if (asid < asid_bits) {




  pr_crit("CPU%d: smaller ASID size(%u) than boot CPU (%u)\n",
    smp_processor_id(), asid, asid_bits);
  cpu_panic_kernel();
 }
}
