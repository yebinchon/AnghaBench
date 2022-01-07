
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int inject_abt64 (struct kvm_vcpu*,int,unsigned long) ;
 int kvm_inject_pabt32 (struct kvm_vcpu*,unsigned long) ;
 scalar_t__ vcpu_el1_is_32bit (struct kvm_vcpu*) ;

void kvm_inject_pabt(struct kvm_vcpu *vcpu, unsigned long addr)
{
 if (vcpu_el1_is_32bit(vcpu))
  kvm_inject_pabt32(vcpu, addr);
 else
  inject_abt64(vcpu, 1, addr);
}
