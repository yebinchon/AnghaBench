
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ vm86_active; } ;
struct vcpu_vmx {TYPE_1__ rmode; TYPE_3__* loaded_vmcs; } ;
struct TYPE_5__ {int nmi_injections; } ;
struct kvm_vcpu {TYPE_2__ stat; } ;
struct TYPE_6__ {int soft_vnmi_blocked; int nmi_known_unmasked; scalar_t__ vnmi_blocked_time; } ;


 int INTR_INFO_VALID_MASK ;
 int INTR_TYPE_NMI_INTR ;
 int NMI_VECTOR ;
 int VM_ENTRY_INTR_INFO_FIELD ;
 int enable_vnmi ;
 int kvm_inject_realmode_interrupt (struct kvm_vcpu*,int,int ) ;
 struct vcpu_vmx* to_vmx (struct kvm_vcpu*) ;
 int vmcs_write32 (int ,int) ;
 int vmx_clear_hlt (struct kvm_vcpu*) ;

__attribute__((used)) static void vmx_inject_nmi(struct kvm_vcpu *vcpu)
{
 struct vcpu_vmx *vmx = to_vmx(vcpu);

 if (!enable_vnmi) {
  vmx->loaded_vmcs->soft_vnmi_blocked = 1;
  vmx->loaded_vmcs->vnmi_blocked_time = 0;
 }

 ++vcpu->stat.nmi_injections;
 vmx->loaded_vmcs->nmi_known_unmasked = 0;

 if (vmx->rmode.vm86_active) {
  kvm_inject_realmode_interrupt(vcpu, NMI_VECTOR, 0);
  return;
 }

 vmcs_write32(VM_ENTRY_INTR_INFO_FIELD,
   INTR_TYPE_NMI_INTR | INTR_INFO_VALID_MASK | NMI_VECTOR);

 vmx_clear_hlt(vcpu);
}
