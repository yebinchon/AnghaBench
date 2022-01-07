
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct x86_emulate_ctxt {int eflags; int tf; int mode; int eip; } ;
struct TYPE_3__ {int emulate_regs_need_sync_from_vcpu; struct x86_emulate_ctxt emulate_ctxt; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct TYPE_4__ {int (* get_cs_db_l_bits ) (struct kvm_vcpu*,int*,int*) ;} ;


 int BUILD_BUG_ON (int) ;
 scalar_t__ HF_GUEST_MASK ;
 scalar_t__ HF_SMM_INSIDE_NMI_MASK ;
 scalar_t__ HF_SMM_MASK ;
 scalar_t__ X86EMUL_GUEST_MASK ;
 int X86EMUL_MODE_PROT16 ;
 int X86EMUL_MODE_PROT32 ;
 int X86EMUL_MODE_PROT64 ;
 int X86EMUL_MODE_REAL ;
 int X86EMUL_MODE_VM86 ;
 scalar_t__ X86EMUL_SMM_INSIDE_NMI_MASK ;
 scalar_t__ X86EMUL_SMM_MASK ;
 int X86_EFLAGS_TF ;
 int X86_EFLAGS_VM ;
 int init_decode_cache (struct x86_emulate_ctxt*) ;
 scalar_t__ is_long_mode (struct kvm_vcpu*) ;
 int is_protmode (struct kvm_vcpu*) ;
 int kvm_get_rflags (struct kvm_vcpu*) ;
 int kvm_rip_read (struct kvm_vcpu*) ;
 TYPE_2__* kvm_x86_ops ;
 int stub1 (struct kvm_vcpu*,int*,int*) ;

__attribute__((used)) static void init_emulate_ctxt(struct kvm_vcpu *vcpu)
{
 struct x86_emulate_ctxt *ctxt = &vcpu->arch.emulate_ctxt;
 int cs_db, cs_l;

 kvm_x86_ops->get_cs_db_l_bits(vcpu, &cs_db, &cs_l);

 ctxt->eflags = kvm_get_rflags(vcpu);
 ctxt->tf = (ctxt->eflags & X86_EFLAGS_TF) != 0;

 ctxt->eip = kvm_rip_read(vcpu);
 ctxt->mode = (!is_protmode(vcpu)) ? X86EMUL_MODE_REAL :
       (ctxt->eflags & X86_EFLAGS_VM) ? X86EMUL_MODE_VM86 :
       (cs_l && is_long_mode(vcpu)) ? X86EMUL_MODE_PROT64 :
       cs_db ? X86EMUL_MODE_PROT32 :
         X86EMUL_MODE_PROT16;
 BUILD_BUG_ON(HF_GUEST_MASK != X86EMUL_GUEST_MASK);
 BUILD_BUG_ON(HF_SMM_MASK != X86EMUL_SMM_MASK);
 BUILD_BUG_ON(HF_SMM_INSIDE_NMI_MASK != X86EMUL_SMM_INSIDE_NMI_MASK);

 init_decode_cache(ctxt);
 vcpu->arch.emulate_regs_need_sync_from_vcpu = 0;
}
