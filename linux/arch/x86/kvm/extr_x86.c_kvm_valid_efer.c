
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_vcpu {int dummy; } ;


 int __kvm_valid_efer (struct kvm_vcpu*,int) ;
 int efer_reserved_bits ;

bool kvm_valid_efer(struct kvm_vcpu *vcpu, u64 efer)
{
 if (efer & efer_reserved_bits)
  return 0;

 return __kvm_valid_efer(vcpu, efer);
}
