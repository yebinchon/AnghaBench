
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 scalar_t__ __kvm_set_dr (struct kvm_vcpu*,int,unsigned long) ;
 int kvm_inject_gp (struct kvm_vcpu*,int ) ;

int kvm_set_dr(struct kvm_vcpu *vcpu, int dr, unsigned long val)
{
 if (__kvm_set_dr(vcpu, dr, val)) {
  kvm_inject_gp(vcpu, 0);
  return 1;
 }
 return 0;
}
