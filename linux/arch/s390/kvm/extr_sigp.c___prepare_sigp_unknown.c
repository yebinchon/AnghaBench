
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int EOPNOTSUPP ;

__attribute__((used)) static int __prepare_sigp_unknown(struct kvm_vcpu *vcpu,
      struct kvm_vcpu *dst_vcpu)
{

 return -EOPNOTSUPP;
}
