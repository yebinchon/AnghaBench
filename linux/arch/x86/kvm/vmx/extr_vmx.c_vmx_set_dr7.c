
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int GUEST_DR7 ;
 int vmcs_writel (int ,unsigned long) ;

__attribute__((used)) static void vmx_set_dr7(struct kvm_vcpu *vcpu, unsigned long val)
{
 vmcs_writel(GUEST_DR7, val);
}
