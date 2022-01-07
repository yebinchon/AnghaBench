
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct kvm_vcpu {int dummy; } ;


 int __kvm_get_msr (struct kvm_vcpu*,int ,int *,int) ;

int kvm_get_msr(struct kvm_vcpu *vcpu, u32 index, u64 *data)
{
 return __kvm_get_msr(vcpu, index, data, 0);
}
