
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int efer; int walk_mmu; } ;
struct kvm_vcpu {int kvm; TYPE_1__ arch; } ;
struct TYPE_4__ {int (* set_cr0 ) (struct kvm_vcpu*,unsigned long) ;int (* get_cs_db_l_bits ) (struct kvm_vcpu*,int*,int*) ;} ;


 unsigned long CR0_RESERVED_BITS ;
 int EFER_LME ;
 int KVM_X86_QUIRK_CD_NW_CLEARED ;
 unsigned long X86_CR0_CD ;
 unsigned long X86_CR0_ET ;
 unsigned long X86_CR0_NW ;
 unsigned long X86_CR0_PE ;
 unsigned long X86_CR0_PG ;
 unsigned long X86_CR0_WP ;
 int X86_CR4_PCIDE ;
 scalar_t__ is_pae (struct kvm_vcpu*) ;
 int is_paging (struct kvm_vcpu*) ;
 scalar_t__ kvm_arch_has_noncoherent_dma (int ) ;
 int kvm_async_pf_hash_reset (struct kvm_vcpu*) ;
 int kvm_check_has_quirk (int ,int ) ;
 int kvm_clear_async_pf_completion_queue (struct kvm_vcpu*) ;
 int kvm_mmu_reset_context (struct kvm_vcpu*) ;
 unsigned long kvm_read_cr0 (struct kvm_vcpu*) ;
 int kvm_read_cr3 (struct kvm_vcpu*) ;
 scalar_t__ kvm_read_cr4_bits (struct kvm_vcpu*,int ) ;
 TYPE_2__* kvm_x86_ops ;
 int kvm_zap_gfn_range (int ,int ,unsigned long long) ;
 int load_pdptrs (struct kvm_vcpu*,int ,int ) ;
 int stub1 (struct kvm_vcpu*,int*,int*) ;
 int stub2 (struct kvm_vcpu*,unsigned long) ;

int kvm_set_cr0(struct kvm_vcpu *vcpu, unsigned long cr0)
{
 unsigned long old_cr0 = kvm_read_cr0(vcpu);
 unsigned long update_bits = X86_CR0_PG | X86_CR0_WP;

 cr0 |= X86_CR0_ET;






 cr0 &= ~CR0_RESERVED_BITS;

 if ((cr0 & X86_CR0_NW) && !(cr0 & X86_CR0_CD))
  return 1;

 if ((cr0 & X86_CR0_PG) && !(cr0 & X86_CR0_PE))
  return 1;

 if (!is_paging(vcpu) && (cr0 & X86_CR0_PG)) {
  if (is_pae(vcpu) && !load_pdptrs(vcpu, vcpu->arch.walk_mmu,
       kvm_read_cr3(vcpu)))
   return 1;
 }

 if (!(cr0 & X86_CR0_PG) && kvm_read_cr4_bits(vcpu, X86_CR4_PCIDE))
  return 1;

 kvm_x86_ops->set_cr0(vcpu, cr0);

 if ((cr0 ^ old_cr0) & X86_CR0_PG) {
  kvm_clear_async_pf_completion_queue(vcpu);
  kvm_async_pf_hash_reset(vcpu);
 }

 if ((cr0 ^ old_cr0) & update_bits)
  kvm_mmu_reset_context(vcpu);

 if (((cr0 ^ old_cr0) & X86_CR0_CD) &&
     kvm_arch_has_noncoherent_dma(vcpu->kvm) &&
     !kvm_check_has_quirk(vcpu->kvm, KVM_X86_QUIRK_CD_NW_CLEARED))
  kvm_zap_gfn_range(vcpu->kvm, 0, ~0ULL);

 return 0;
}
