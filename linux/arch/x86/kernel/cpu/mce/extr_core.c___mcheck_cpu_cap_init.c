
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct TYPE_2__ {int ser; int rip_msr; } ;


 int MAX_NR_BANKS ;
 int MCG_BANKCNT_MASK ;
 int MCG_EXT_CNT (int) ;
 int MCG_EXT_P ;
 int MCG_SER_P ;
 int MSR_IA32_MCG_CAP ;
 int MSR_IA32_MCG_EIP ;
 int __mcheck_cpu_mce_banks_init () ;
 TYPE_1__ mca_cfg ;
 int mce_num_banks ;
 int pr_warn (char*,int ,int,int) ;
 int rdmsrl (int ,int) ;
 int smp_processor_id () ;
 int this_cpu_write (int ,int) ;

__attribute__((used)) static void __mcheck_cpu_cap_init(void)
{
 u64 cap;
 u8 b;

 rdmsrl(MSR_IA32_MCG_CAP, cap);

 b = cap & MCG_BANKCNT_MASK;

 if (b > MAX_NR_BANKS) {
  pr_warn("CPU%d: Using only %u machine check banks out of %u\n",
   smp_processor_id(), MAX_NR_BANKS, b);
  b = MAX_NR_BANKS;
 }

 this_cpu_write(mce_num_banks, b);

 __mcheck_cpu_mce_banks_init();


 if ((cap & MCG_EXT_P) && MCG_EXT_CNT(cap) >= 9)
  mca_cfg.rip_msr = MSR_IA32_MCG_EIP;

 if (cap & MCG_SER_P)
  mca_cfg.ser = 1;
}
