
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_vcpu {int dummy; } ;


 int __kvm_set_msr (struct kvm_vcpu*,unsigned int,int ,int) ;

__attribute__((used)) static int do_set_msr(struct kvm_vcpu *vcpu, unsigned index, u64 *data)
{
 return __kvm_set_msr(vcpu, index, *data, 1);
}
