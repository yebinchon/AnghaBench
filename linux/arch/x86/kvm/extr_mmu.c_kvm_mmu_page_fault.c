
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_5__ {int gpa_available; TYPE_1__* mmu; int gpa_val; } ;
struct kvm_vcpu {int kvm; TYPE_2__ arch; } ;
typedef int gva_t ;
struct TYPE_6__ {int (* need_emulation_on_page_fault ) (struct kvm_vcpu*) ;} ;
struct TYPE_4__ {int direct_map; int (* page_fault ) (struct kvm_vcpu*,int ,int ,int) ;} ;


 int EMULTYPE_ALLOW_RETRY ;
 int PFERR_NESTED_GUEST_PAGE ;
 int PFERR_RSVD_MASK ;
 int RET_PF_EMULATE ;
 int RET_PF_INVALID ;
 int RET_PF_RETRY ;
 int WARN_ON (int) ;
 int gpa_to_gfn (int ) ;
 int handle_mmio_page_fault (struct kvm_vcpu*,int ,int) ;
 int is_guest_mode (struct kvm_vcpu*) ;
 int kvm_mmu_unprotect_page (int ,int ) ;
 TYPE_3__* kvm_x86_ops ;
 int lower_32_bits (int) ;
 int mmio_info_in_cache (struct kvm_vcpu*,int ,int) ;
 int stub1 (struct kvm_vcpu*,int ,int ,int) ;
 int stub2 (struct kvm_vcpu*) ;
 scalar_t__ unlikely (int) ;
 int x86_emulate_instruction (struct kvm_vcpu*,int ,int,void*,int) ;

int kvm_mmu_page_fault(struct kvm_vcpu *vcpu, gva_t cr2, u64 error_code,
         void *insn, int insn_len)
{
 int r, emulation_type = 0;
 bool direct = vcpu->arch.mmu->direct_map;


 if (vcpu->arch.mmu->direct_map) {
  vcpu->arch.gpa_available = 1;
  vcpu->arch.gpa_val = cr2;
 }

 r = RET_PF_INVALID;
 if (unlikely(error_code & PFERR_RSVD_MASK)) {
  r = handle_mmio_page_fault(vcpu, cr2, direct);
  if (r == RET_PF_EMULATE)
   goto emulate;
 }

 if (r == RET_PF_INVALID) {
  r = vcpu->arch.mmu->page_fault(vcpu, cr2,
            lower_32_bits(error_code),
            0);
  WARN_ON(r == RET_PF_INVALID);
 }

 if (r == RET_PF_RETRY)
  return 1;
 if (r < 0)
  return r;
 if (vcpu->arch.mmu->direct_map &&
     (error_code & PFERR_NESTED_GUEST_PAGE) == PFERR_NESTED_GUEST_PAGE) {
  kvm_mmu_unprotect_page(vcpu->kvm, gpa_to_gfn(cr2));
  return 1;
 }
 if (!mmio_info_in_cache(vcpu, cr2, direct) && !is_guest_mode(vcpu))
  emulation_type = EMULTYPE_ALLOW_RETRY;
emulate:







 if (unlikely(insn && !insn_len)) {
  if (!kvm_x86_ops->need_emulation_on_page_fault(vcpu))
   return 1;
 }

 return x86_emulate_instruction(vcpu, cr2, emulation_type, insn,
           insn_len);
}
