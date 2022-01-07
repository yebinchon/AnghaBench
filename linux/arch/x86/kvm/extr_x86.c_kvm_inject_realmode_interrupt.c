
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct x86_emulate_ctxt {int op_bytes; int ad_bytes; int eflags; scalar_t__ eip; scalar_t__ _eip; } ;
struct TYPE_2__ {struct x86_emulate_ctxt emulate_ctxt; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int KVM_REQ_TRIPLE_FAULT ;
 int X86EMUL_CONTINUE ;
 int emulate_int_real (struct x86_emulate_ctxt*,int) ;
 int init_emulate_ctxt (struct kvm_vcpu*) ;
 int kvm_make_request (int ,struct kvm_vcpu*) ;
 int kvm_rip_write (struct kvm_vcpu*,scalar_t__) ;
 int kvm_set_rflags (struct kvm_vcpu*,int ) ;

void kvm_inject_realmode_interrupt(struct kvm_vcpu *vcpu, int irq, int inc_eip)
{
 struct x86_emulate_ctxt *ctxt = &vcpu->arch.emulate_ctxt;
 int ret;

 init_emulate_ctxt(vcpu);

 ctxt->op_bytes = 2;
 ctxt->ad_bytes = 2;
 ctxt->_eip = ctxt->eip + inc_eip;
 ret = emulate_int_real(ctxt, irq);

 if (ret != X86EMUL_CONTINUE) {
  kvm_make_request(KVM_REQ_TRIPLE_FAULT, vcpu);
 } else {
  ctxt->eip = ctxt->_eip;
  kvm_rip_write(vcpu, ctxt->eip);
  kvm_set_rflags(vcpu, ctxt->eflags);
 }
}
