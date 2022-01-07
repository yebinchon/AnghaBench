
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kvm_vcpu {int dummy; } ;


 int kvm_multiple_exception (struct kvm_vcpu*,unsigned int,int,int ,int,int ,int) ;

void kvm_queue_exception_e(struct kvm_vcpu *vcpu, unsigned nr, u32 error_code)
{
 kvm_multiple_exception(vcpu, nr, 1, error_code, 0, 0, 0);
}
