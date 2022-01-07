
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ulong ;
typedef int u32 ;
struct TYPE_2__ {unsigned long cr3; int regs_avail; int walk_mmu; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 scalar_t__ CC (int) ;
 int EINVAL ;
 int ENTRY_FAIL_DEFAULT ;
 int ENTRY_FAIL_PDPTE ;
 int VCPU_EXREG_CR3 ;
 int __set_bit (int ,int *) ;
 scalar_t__ is_pae_paging (struct kvm_vcpu*) ;
 int kvm_init_mmu (struct kvm_vcpu*,int) ;
 int kvm_mmu_new_cr3 (struct kvm_vcpu*,unsigned long,int) ;
 unsigned long kvm_read_cr3 (struct kvm_vcpu*) ;
 int load_pdptrs (struct kvm_vcpu*,int ,unsigned long) ;
 int nested_cr3_valid (struct kvm_vcpu*,unsigned long) ;
 scalar_t__ pdptrs_changed (struct kvm_vcpu*) ;

__attribute__((used)) static int nested_vmx_load_cr3(struct kvm_vcpu *vcpu, unsigned long cr3, bool nested_ept,
          u32 *entry_failure_code)
{
 if (cr3 != kvm_read_cr3(vcpu) || (!nested_ept && pdptrs_changed(vcpu))) {
  if (CC(!nested_cr3_valid(vcpu, cr3))) {
   *entry_failure_code = ENTRY_FAIL_DEFAULT;
   return -EINVAL;
  }





  if (is_pae_paging(vcpu) && !nested_ept) {
   if (CC(!load_pdptrs(vcpu, vcpu->arch.walk_mmu, cr3))) {
    *entry_failure_code = ENTRY_FAIL_PDPTE;
    return -EINVAL;
   }
  }
 }

 if (!nested_ept)
  kvm_mmu_new_cr3(vcpu, cr3, 0);

 vcpu->arch.cr3 = cr3;
 __set_bit(VCPU_EXREG_CR3, (ulong *)&vcpu->arch.regs_avail);

 kvm_init_mmu(vcpu, 0);

 return 0;
}
