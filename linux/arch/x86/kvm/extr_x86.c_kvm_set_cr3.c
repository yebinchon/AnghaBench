
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ulong ;
struct TYPE_2__ {unsigned long cr3; int regs_avail; int walk_mmu; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int KVM_REQ_TLB_FLUSH ;
 int VCPU_EXREG_CR3 ;
 unsigned long X86_CR3_PCID_NOFLUSH ;
 int X86_CR4_PCIDE ;
 int __set_bit (int ,int *) ;
 int cpuid_maxphyaddr (struct kvm_vcpu*) ;
 scalar_t__ is_long_mode (struct kvm_vcpu*) ;
 scalar_t__ is_pae_paging (struct kvm_vcpu*) ;
 int kvm_make_request (int ,struct kvm_vcpu*) ;
 int kvm_mmu_new_cr3 (struct kvm_vcpu*,unsigned long,int) ;
 int kvm_mmu_sync_roots (struct kvm_vcpu*) ;
 unsigned long kvm_read_cr3 (struct kvm_vcpu*) ;
 int kvm_read_cr4_bits (struct kvm_vcpu*,int ) ;
 int load_pdptrs (struct kvm_vcpu*,int ,unsigned long) ;
 int pdptrs_changed (struct kvm_vcpu*) ;
 unsigned long rsvd_bits (int ,int) ;

int kvm_set_cr3(struct kvm_vcpu *vcpu, unsigned long cr3)
{
 bool skip_tlb_flush = 0;
 if (cr3 == kvm_read_cr3(vcpu) && !pdptrs_changed(vcpu)) {
  if (!skip_tlb_flush) {
   kvm_mmu_sync_roots(vcpu);
   kvm_make_request(KVM_REQ_TLB_FLUSH, vcpu);
  }
  return 0;
 }

 if (is_long_mode(vcpu) &&
     (cr3 & rsvd_bits(cpuid_maxphyaddr(vcpu), 63)))
  return 1;
 else if (is_pae_paging(vcpu) &&
   !load_pdptrs(vcpu, vcpu->arch.walk_mmu, cr3))
  return 1;

 kvm_mmu_new_cr3(vcpu, cr3, skip_tlb_flush);
 vcpu->arch.cr3 = cr3;
 __set_bit(VCPU_EXREG_CR3, (ulong *)&vcpu->arch.regs_avail);

 return 0;
}
