
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ulong ;
struct TYPE_5__ {int iac1; int iac2; int iac3; int iac4; int dac1; int dac2; int dbcr0; int dbcr1; int dbcr2; } ;
struct TYPE_6__ {int ivpr; int epr; int csrr0; int csrr1; int dsrr0; int dsrr1; int dbsr; int tsr; int tcr; int* ivor; int mcsr; int epcr; TYPE_2__ dbg_reg; TYPE_1__* shared; } ;
struct kvm_vcpu {TYPE_3__ arch; int guest_debug; } ;
struct TYPE_4__ {int dar; int esr; } ;


 size_t BOOKE_IRQPRIO_ALIGNMENT ;
 size_t BOOKE_IRQPRIO_AP_UNAVAIL ;
 size_t BOOKE_IRQPRIO_CRITICAL ;
 size_t BOOKE_IRQPRIO_DATA_STORAGE ;
 size_t BOOKE_IRQPRIO_DEBUG ;
 size_t BOOKE_IRQPRIO_DECREMENTER ;
 size_t BOOKE_IRQPRIO_DTLB_MISS ;
 size_t BOOKE_IRQPRIO_EXTERNAL ;
 size_t BOOKE_IRQPRIO_FIT ;
 size_t BOOKE_IRQPRIO_FP_UNAVAIL ;
 size_t BOOKE_IRQPRIO_INST_STORAGE ;
 size_t BOOKE_IRQPRIO_ITLB_MISS ;
 size_t BOOKE_IRQPRIO_MACHINE_CHECK ;
 size_t BOOKE_IRQPRIO_PROGRAM ;
 size_t BOOKE_IRQPRIO_SYSCALL ;
 size_t BOOKE_IRQPRIO_WATCHDOG ;
 int DBCR0_EDM ;
 int EMULATE_DONE ;
 int EMULATE_FAIL ;
int kvmppc_booke_emulate_mfspr(struct kvm_vcpu *vcpu, int sprn, ulong *spr_val)
{
 int emulated = EMULATE_DONE;

 switch (sprn) {
 case 131:
  *spr_val = vcpu->arch.ivpr;
  break;
 case 157:
  *spr_val = vcpu->arch.shared->dar;
  break;
 case 152:
  *spr_val = vcpu->arch.shared->esr;
  break;
 case 153:
  *spr_val = vcpu->arch.epr;
  break;
 case 165:
  *spr_val = vcpu->arch.csrr0;
  break;
 case 164:
  *spr_val = vcpu->arch.csrr1;
  break;
 case 156:
  *spr_val = vcpu->arch.dsrr0;
  break;
 case 155:
  *spr_val = vcpu->arch.dsrr1;
  break;
 case 151:
  *spr_val = vcpu->arch.dbg_reg.iac1;
  break;
 case 150:
  *spr_val = vcpu->arch.dbg_reg.iac2;
  break;
 case 163:
  *spr_val = vcpu->arch.dbg_reg.dac1;
  break;
 case 162:
  *spr_val = vcpu->arch.dbg_reg.dac2;
  break;
 case 161:
  *spr_val = vcpu->arch.dbg_reg.dbcr0;
  if (vcpu->guest_debug)
   *spr_val = *spr_val | DBCR0_EDM;
  break;
 case 160:
  *spr_val = vcpu->arch.dbg_reg.dbcr1;
  break;
 case 159:
  *spr_val = vcpu->arch.dbg_reg.dbcr2;
  break;
 case 158:
  *spr_val = vcpu->arch.dbsr;
  break;
 case 128:
  *spr_val = vcpu->arch.tsr;
  break;
 case 129:
  *spr_val = vcpu->arch.tcr;
  break;

 case 147:
  *spr_val = vcpu->arch.ivor[BOOKE_IRQPRIO_CRITICAL];
  break;
 case 146:
  *spr_val = vcpu->arch.ivor[BOOKE_IRQPRIO_MACHINE_CHECK];
  break;
 case 139:
  *spr_val = vcpu->arch.ivor[BOOKE_IRQPRIO_DATA_STORAGE];
  break;
 case 138:
  *spr_val = vcpu->arch.ivor[BOOKE_IRQPRIO_INST_STORAGE];
  break;
 case 137:
  *spr_val = vcpu->arch.ivor[BOOKE_IRQPRIO_EXTERNAL];
  break;
 case 136:
  *spr_val = vcpu->arch.ivor[BOOKE_IRQPRIO_ALIGNMENT];
  break;
 case 135:
  *spr_val = vcpu->arch.ivor[BOOKE_IRQPRIO_PROGRAM];
  break;
 case 134:
  *spr_val = vcpu->arch.ivor[BOOKE_IRQPRIO_FP_UNAVAIL];
  break;
 case 133:
  *spr_val = vcpu->arch.ivor[BOOKE_IRQPRIO_SYSCALL];
  break;
 case 132:
  *spr_val = vcpu->arch.ivor[BOOKE_IRQPRIO_AP_UNAVAIL];
  break;
 case 145:
  *spr_val = vcpu->arch.ivor[BOOKE_IRQPRIO_DECREMENTER];
  break;
 case 144:
  *spr_val = vcpu->arch.ivor[BOOKE_IRQPRIO_FIT];
  break;
 case 143:
  *spr_val = vcpu->arch.ivor[BOOKE_IRQPRIO_WATCHDOG];
  break;
 case 142:
  *spr_val = vcpu->arch.ivor[BOOKE_IRQPRIO_DTLB_MISS];
  break;
 case 141:
  *spr_val = vcpu->arch.ivor[BOOKE_IRQPRIO_ITLB_MISS];
  break;
 case 140:
  *spr_val = vcpu->arch.ivor[BOOKE_IRQPRIO_DEBUG];
  break;
 case 130:
  *spr_val = vcpu->arch.mcsr;
  break;






 default:
  emulated = EMULATE_FAIL;
 }

 return emulated;
}
