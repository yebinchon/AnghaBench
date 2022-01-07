
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 scalar_t__ kvm_apic_accept_pic_intr (struct kvm_vcpu*) ;
 int lapic_in_kernel (struct kvm_vcpu*) ;

__attribute__((used)) static int kvm_cpu_accept_dm_intr(struct kvm_vcpu *vcpu)
{
 return (!lapic_in_kernel(vcpu) ||
  kvm_apic_accept_pic_intr(vcpu));
}
