
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int KVM_PHYS_SHIFT ;
 int PAGE_SHIFT ;
 int PGDIR_SHIFT ;
 unsigned int PHYS_MASK_SHIFT ;
 int SYS_ID_AA64MMFR0_EL1 ;
 int WARN (int,char*,unsigned int) ;
 unsigned int id_aa64mmfr0_parange_to_phys_shift (unsigned int) ;
 int kvm_info (char*,unsigned int) ;
 unsigned int kvm_ipa_limit ;
 int pr_info (char*,char*) ;
 int read_sanitised_ftr_reg (int ) ;

void kvm_set_ipa_limit(void)
{
 unsigned int ipa_max, pa_max, va_max, parange;

 parange = read_sanitised_ftr_reg(SYS_ID_AA64MMFR0_EL1) & 0x7;
 pa_max = id_aa64mmfr0_parange_to_phys_shift(parange);


 ipa_max = (pa_max > PHYS_MASK_SHIFT) ? PHYS_MASK_SHIFT : pa_max;
 va_max = PGDIR_SHIFT + PAGE_SHIFT - 3;
 va_max += 4;

 if (va_max < ipa_max)
  ipa_max = va_max;





 if (ipa_max < pa_max)
  pr_info("kvm: Limiting the IPA size due to kernel %s Address limit\n",
   (va_max < pa_max) ? "Virtual" : "Physical");

 WARN(ipa_max < KVM_PHYS_SHIFT,
      "KVM IPA limit (%d bit) is smaller than default size\n", ipa_max);
 kvm_ipa_limit = ipa_max;
 kvm_info("IPA Size Limit: %dbits\n", kvm_ipa_limit);
}
