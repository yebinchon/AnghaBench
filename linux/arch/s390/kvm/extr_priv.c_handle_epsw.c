
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_14__ {TYPE_6__* sie_block; } ;
struct TYPE_8__ {int instruction_epsw; } ;
struct kvm_vcpu {TYPE_7__ arch; TYPE_4__* run; TYPE_1__ stat; } ;
struct TYPE_12__ {int mask; } ;
struct TYPE_13__ {TYPE_5__ gpsw; } ;
struct TYPE_9__ {int* gprs; } ;
struct TYPE_10__ {TYPE_2__ regs; } ;
struct TYPE_11__ {TYPE_3__ s; } ;


 int kvm_s390_get_regs_rre (struct kvm_vcpu*,int*,int*) ;

__attribute__((used)) static int handle_epsw(struct kvm_vcpu *vcpu)
{
 int reg1, reg2;

 vcpu->stat.instruction_epsw++;

 kvm_s390_get_regs_rre(vcpu, &reg1, &reg2);


 vcpu->run->s.regs.gprs[reg1] &= 0xffffffff00000000UL;
 vcpu->run->s.regs.gprs[reg1] |= vcpu->arch.sie_block->gpsw.mask >> 32;
 if (reg2) {
  vcpu->run->s.regs.gprs[reg2] &= 0xffffffff00000000UL;
  vcpu->run->s.regs.gprs[reg2] |=
   vcpu->arch.sie_block->gpsw.mask & 0x00000000ffffffffUL;
 }
 return 0;
}
