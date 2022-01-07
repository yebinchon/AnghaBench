
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct kvm_lapic_state {int dummy; } ;


 int kvm_apic_set_state (struct kvm_vcpu*,struct kvm_lapic_state*) ;
 int update_cr8_intercept (struct kvm_vcpu*) ;

__attribute__((used)) static int kvm_vcpu_ioctl_set_lapic(struct kvm_vcpu *vcpu,
        struct kvm_lapic_state *s)
{
 int r;

 r = kvm_apic_set_state(vcpu, s);
 if (r)
  return r;
 update_cr8_intercept(vcpu);

 return 0;
}
