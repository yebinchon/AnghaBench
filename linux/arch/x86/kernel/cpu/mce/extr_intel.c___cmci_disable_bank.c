
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int MCI_CTL2_CMCI_EN ;
 int MSR_IA32_MCx_CTL2 (int) ;
 int __clear_bit (int,int ) ;
 int mce_banks_owned ;
 int rdmsrl (int ,int ) ;
 int test_bit (int,int ) ;
 int this_cpu_ptr (int ) ;
 int wrmsrl (int ,int ) ;

__attribute__((used)) static void __cmci_disable_bank(int bank)
{
 u64 val;

 if (!test_bit(bank, this_cpu_ptr(mce_banks_owned)))
  return;
 rdmsrl(MSR_IA32_MCx_CTL2(bank), val);
 val &= ~MCI_CTL2_CMCI_EN;
 wrmsrl(MSR_IA32_MCx_CTL2(bank), val);
 __clear_bit(bank, this_cpu_ptr(mce_banks_owned));
}
