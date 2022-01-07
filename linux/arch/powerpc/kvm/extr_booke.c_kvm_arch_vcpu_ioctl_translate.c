
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct kvm_translation {int dummy; } ;


 int kvmppc_core_vcpu_translate (struct kvm_vcpu*,struct kvm_translation*) ;
 int vcpu_load (struct kvm_vcpu*) ;
 int vcpu_put (struct kvm_vcpu*) ;

int kvm_arch_vcpu_ioctl_translate(struct kvm_vcpu *vcpu,
                                  struct kvm_translation *tr)
{
 int r;

 vcpu_load(vcpu);
 r = kvmppc_core_vcpu_translate(vcpu, tr);
 vcpu_put(vcpu);
 return r;
}
