
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 unsigned long KVM_ENOSYS ;
 int RESUME_GUEST ;

__attribute__((used)) static int kvm_mips_hypercall(struct kvm_vcpu *vcpu, unsigned long num,
         const unsigned long *args, unsigned long *hret)
{

 *hret = -KVM_ENOSYS;
 return RESUME_GUEST;
}
