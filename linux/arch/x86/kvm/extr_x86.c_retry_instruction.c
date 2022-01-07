
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct x86_emulate_ctxt {unsigned long eip; } ;
struct TYPE_4__ {unsigned long last_retry_eip; unsigned long last_retry_addr; TYPE_1__* mmu; } ;
struct kvm_vcpu {int kvm; TYPE_2__ arch; } ;
struct TYPE_3__ {int direct_map; } ;


 int EMULTYPE_ALLOW_RETRY ;
 scalar_t__ WARN_ON_ONCE (int ) ;
 struct kvm_vcpu* emul_to_vcpu (struct x86_emulate_ctxt*) ;
 int gpa_to_gfn (unsigned long) ;
 int is_guest_mode (struct kvm_vcpu*) ;
 unsigned long kvm_mmu_gva_to_gpa_write (struct kvm_vcpu*,unsigned long,int *) ;
 int kvm_mmu_unprotect_page (int ,int ) ;
 scalar_t__ x86_page_table_writing_insn (struct x86_emulate_ctxt*) ;

__attribute__((used)) static bool retry_instruction(struct x86_emulate_ctxt *ctxt,
         unsigned long cr2, int emulation_type)
{
 struct kvm_vcpu *vcpu = emul_to_vcpu(ctxt);
 unsigned long last_retry_eip, last_retry_addr, gpa = cr2;

 last_retry_eip = vcpu->arch.last_retry_eip;
 last_retry_addr = vcpu->arch.last_retry_addr;
 vcpu->arch.last_retry_eip = vcpu->arch.last_retry_addr = 0;

 if (!(emulation_type & EMULTYPE_ALLOW_RETRY))
  return 0;

 if (WARN_ON_ONCE(is_guest_mode(vcpu)))
  return 0;

 if (x86_page_table_writing_insn(ctxt))
  return 0;

 if (ctxt->eip == last_retry_eip && last_retry_addr == cr2)
  return 0;

 vcpu->arch.last_retry_eip = ctxt->eip;
 vcpu->arch.last_retry_addr = cr2;

 if (!vcpu->arch.mmu->direct_map)
  gpa = kvm_mmu_gva_to_gpa_write(vcpu, cr2, ((void*)0));

 kvm_mmu_unprotect_page(vcpu->kvm, gpa_to_gfn(gpa));

 return 1;
}
