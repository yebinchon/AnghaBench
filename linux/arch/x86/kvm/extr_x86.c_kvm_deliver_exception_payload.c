
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int nr; int has_payload; unsigned long payload; } ;
struct TYPE_4__ {unsigned long dr6; unsigned long cr2; TYPE_1__ exception; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;



 unsigned long DR6_RTM ;
 unsigned long DR_TRAP_BITS ;


void kvm_deliver_exception_payload(struct kvm_vcpu *vcpu)
{
 unsigned nr = vcpu->arch.exception.nr;
 bool has_payload = vcpu->arch.exception.has_payload;
 unsigned long payload = vcpu->arch.exception.payload;

 if (!has_payload)
  return;

 switch (nr) {
 case 129:





  vcpu->arch.dr6 &= ~DR_TRAP_BITS;



  vcpu->arch.dr6 |= DR6_RTM;
  vcpu->arch.dr6 |= payload;
  vcpu->arch.dr6 ^= payload & DR6_RTM;
  break;
 case 128:
  vcpu->arch.cr2 = payload;
  break;
 }

 vcpu->arch.exception.has_payload = 0;
 vcpu->arch.exception.payload = 0;
}
