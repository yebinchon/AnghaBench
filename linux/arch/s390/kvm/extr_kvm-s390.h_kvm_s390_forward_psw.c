
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int kvm_s390_rewind_psw (struct kvm_vcpu*,int) ;

__attribute__((used)) static inline void kvm_s390_forward_psw(struct kvm_vcpu *vcpu, int ilen)
{
 kvm_s390_rewind_psw(vcpu, -ilen);
}
