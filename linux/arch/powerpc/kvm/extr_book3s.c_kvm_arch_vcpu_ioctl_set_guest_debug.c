
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int guest_debug; } ;
struct kvm_guest_debug {int control; } ;


 int vcpu_load (struct kvm_vcpu*) ;
 int vcpu_put (struct kvm_vcpu*) ;

int kvm_arch_vcpu_ioctl_set_guest_debug(struct kvm_vcpu *vcpu,
     struct kvm_guest_debug *dbg)
{
 vcpu_load(vcpu);
 vcpu->guest_debug = dbg->control;
 vcpu_put(vcpu);
 return 0;
}
