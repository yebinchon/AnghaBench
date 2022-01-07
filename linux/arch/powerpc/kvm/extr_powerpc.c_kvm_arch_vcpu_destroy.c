
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int kvm_arch_vcpu_free (struct kvm_vcpu*) ;

void kvm_arch_vcpu_destroy(struct kvm_vcpu *vcpu)
{
 kvm_arch_vcpu_free(vcpu);
}
