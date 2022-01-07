
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcpu_vmx {scalar_t__ exit_reason; } ;
struct kvm_vcpu {int dummy; } ;


 scalar_t__ EXIT_REASON_EXCEPTION_NMI ;
 scalar_t__ EXIT_REASON_EXTERNAL_INTERRUPT ;
 int handle_exception_nmi_irqoff (struct vcpu_vmx*) ;
 int handle_external_interrupt_irqoff (struct kvm_vcpu*) ;
 struct vcpu_vmx* to_vmx (struct kvm_vcpu*) ;

__attribute__((used)) static void vmx_handle_exit_irqoff(struct kvm_vcpu *vcpu)
{
 struct vcpu_vmx *vmx = to_vmx(vcpu);

 if (vmx->exit_reason == EXIT_REASON_EXTERNAL_INTERRUPT)
  handle_external_interrupt_irqoff(vcpu);
 else if (vmx->exit_reason == EXIT_REASON_EXCEPTION_NMI)
  handle_exception_nmi_irqoff(vmx);
}
