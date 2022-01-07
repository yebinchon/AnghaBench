
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int CPU_BASED_VIRTUAL_INTR_PENDING ;
 int exec_controls_setbit (int ,int ) ;
 int to_vmx (struct kvm_vcpu*) ;

__attribute__((used)) static void enable_irq_window(struct kvm_vcpu *vcpu)
{
 exec_controls_setbit(to_vmx(vcpu), CPU_BASED_VIRTUAL_INTR_PENDING);
}
