
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct kvm_vcpu {int dummy; } ;


 int EOPNOTSUPP ;

__attribute__((used)) static int __prepare_sigp_cpu_reset(struct kvm_vcpu *vcpu,
        struct kvm_vcpu *dst_vcpu, u8 order_code)
{

 return -EOPNOTSUPP;
}
