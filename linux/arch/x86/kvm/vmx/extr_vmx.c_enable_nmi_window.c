
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int CPU_BASED_VIRTUAL_NMI_PENDING ;
 int GUEST_INTERRUPTIBILITY_INFO ;
 int GUEST_INTR_STATE_STI ;
 int enable_irq_window (struct kvm_vcpu*) ;
 int enable_vnmi ;
 int exec_controls_setbit (int ,int ) ;
 int to_vmx (struct kvm_vcpu*) ;
 int vmcs_read32 (int ) ;

__attribute__((used)) static void enable_nmi_window(struct kvm_vcpu *vcpu)
{
 if (!enable_vnmi ||
     vmcs_read32(GUEST_INTERRUPTIBILITY_INFO) & GUEST_INTR_STATE_STI) {
  enable_irq_window(vcpu);
  return;
 }

 exec_controls_setbit(to_vmx(vcpu), CPU_BASED_VIRTUAL_NMI_PENDING);
}
