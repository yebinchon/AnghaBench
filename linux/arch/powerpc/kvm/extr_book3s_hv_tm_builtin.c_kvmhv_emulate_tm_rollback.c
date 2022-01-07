
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int ccr; int nip; } ;
struct TYPE_4__ {int msr; } ;
struct TYPE_5__ {TYPE_3__ regs; int tfhar; TYPE_1__ shregs; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;


 int MSR_TS_MASK ;
 int copy_from_checkpoint (struct kvm_vcpu*) ;

void kvmhv_emulate_tm_rollback(struct kvm_vcpu *vcpu)
{
 vcpu->arch.shregs.msr &= ~MSR_TS_MASK;
 vcpu->arch.regs.nip = vcpu->arch.tfhar;
 copy_from_checkpoint(vcpu);
 vcpu->arch.regs.ccr = (vcpu->arch.regs.ccr & 0x0fffffff) | 0xa0000000;
}
