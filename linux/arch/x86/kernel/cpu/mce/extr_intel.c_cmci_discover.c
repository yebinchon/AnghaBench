
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {scalar_t__ bios_cmci_threshold; } ;


 int CMCI_THRESHOLD ;
 int MCI_CTL2_CMCI_EN ;
 int MCI_CTL2_CMCI_THRESHOLD_MASK ;
 int MSR_IA32_MCx_CTL2 (int) ;
 int WARN_ON (int) ;
 int __clear_bit (int,unsigned long*) ;
 int clear_bit (int,unsigned long*) ;
 int cmci_discover_lock ;
 TYPE_1__ mca_cfg ;
 unsigned long* mce_banks_ce_disabled ;
 int mce_banks_owned ;
 int * mce_poll_banks ;
 int pr_info_once (char*) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int rdmsrl (int ,int) ;
 int set_bit (int,unsigned long*) ;
 scalar_t__ test_bit (int,unsigned long*) ;
 unsigned long* this_cpu_ptr (int *) ;
 int wrmsrl (int ,int) ;

__attribute__((used)) static void cmci_discover(int banks)
{
 unsigned long *owned = (void *)this_cpu_ptr(&mce_banks_owned);
 unsigned long flags;
 int i;
 int bios_wrong_thresh = 0;

 raw_spin_lock_irqsave(&cmci_discover_lock, flags);
 for (i = 0; i < banks; i++) {
  u64 val;
  int bios_zero_thresh = 0;

  if (test_bit(i, owned))
   continue;


  if (test_bit(i, mce_banks_ce_disabled))
   continue;

  rdmsrl(MSR_IA32_MCx_CTL2(i), val);


  if (val & MCI_CTL2_CMCI_EN) {
   clear_bit(i, owned);
   __clear_bit(i, this_cpu_ptr(mce_poll_banks));
   continue;
  }

  if (!mca_cfg.bios_cmci_threshold) {
   val &= ~MCI_CTL2_CMCI_THRESHOLD_MASK;
   val |= CMCI_THRESHOLD;
  } else if (!(val & MCI_CTL2_CMCI_THRESHOLD_MASK)) {





   bios_zero_thresh = 1;
   val |= CMCI_THRESHOLD;
  }

  val |= MCI_CTL2_CMCI_EN;
  wrmsrl(MSR_IA32_MCx_CTL2(i), val);
  rdmsrl(MSR_IA32_MCx_CTL2(i), val);


  if (val & MCI_CTL2_CMCI_EN) {
   set_bit(i, owned);
   __clear_bit(i, this_cpu_ptr(mce_poll_banks));






   if (mca_cfg.bios_cmci_threshold && bios_zero_thresh &&
     (val & MCI_CTL2_CMCI_THRESHOLD_MASK))
    bios_wrong_thresh = 1;
  } else {
   WARN_ON(!test_bit(i, this_cpu_ptr(mce_poll_banks)));
  }
 }
 raw_spin_unlock_irqrestore(&cmci_discover_lock, flags);
 if (mca_cfg.bios_cmci_threshold && bios_wrong_thresh) {
  pr_info_once(
   "bios_cmci_threshold: Some banks do not have valid thresholds set\n");
  pr_info_once(
   "bios_cmci_threshold: Make sure your BIOS supports this boot option\n");
 }
}
