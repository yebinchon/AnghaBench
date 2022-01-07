
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {struct kvm_s390_sie_block* sie_block; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_s390_sie_block {int icptcode; int ipa; int icptstatus; int pgmilc; } ;
 int insn_length (int) ;

u8 kvm_s390_get_ilen(struct kvm_vcpu *vcpu)
{
 struct kvm_s390_sie_block *sie_block = vcpu->arch.sie_block;
 u8 ilen = 0;

 switch (vcpu->arch.sie_block->icptcode) {
 case 133:
 case 132:
 case 130:
 case 129:
 case 131:

  ilen = insn_length(vcpu->arch.sie_block->ipa >> 8);

  if (sie_block->icptstatus & 1) {
   ilen = (sie_block->icptstatus >> 4) & 0x6;
   if (!ilen)
    ilen = 4;
  }
  break;
 case 128:

  ilen = vcpu->arch.sie_block->pgmilc & 0x6;
  break;
 }
 return ilen;
}
