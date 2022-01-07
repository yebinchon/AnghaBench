
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int ulong ;
typedef int u32 ;
struct kvmppc_vcpu_e500 {int* pid; int l1csr0; int l1csr1; int hid0; int hid1; int svr; } ;
struct TYPE_4__ {int decar; int* tlbcfg; int* tlbps; int mmucfg; int eptcfg; int pwrmgtcr0; int* ivor; TYPE_1__* shared; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct TYPE_3__ {int mas0; int mas1; int mas2; int mas7_3; int mas4; int mas6; } ;


 size_t BOOKE_IRQPRIO_ALTIVEC_ASSIST ;
 size_t BOOKE_IRQPRIO_ALTIVEC_UNAVAIL ;
 size_t BOOKE_IRQPRIO_DBELL ;
 size_t BOOKE_IRQPRIO_DBELL_CRIT ;
 size_t BOOKE_IRQPRIO_PERFORMANCE_MONITOR ;
 size_t BOOKE_IRQPRIO_SPE_FP_DATA ;
 size_t BOOKE_IRQPRIO_SPE_FP_ROUND ;
 size_t BOOKE_IRQPRIO_SPE_UNAVAIL ;
 int EMULATE_DONE ;
 int EMULATE_FAIL ;
 int VCPU_FTR_MMU_V2 ;
 int has_feature (struct kvm_vcpu*,int ) ;
 int kvmppc_booke_emulate_mfspr (struct kvm_vcpu*,int,int*) ;
 struct kvmppc_vcpu_e500* to_e500 (struct kvm_vcpu*) ;

int kvmppc_core_emulate_mfspr_e500(struct kvm_vcpu *vcpu, int sprn, ulong *spr_val)
{
 struct kvmppc_vcpu_e500 *vcpu_e500 = to_e500(vcpu);
 int emulated = EMULATE_DONE;

 switch (sprn) {

 case 136:
  *spr_val = vcpu_e500->pid[0];
  break;
 case 135:
  *spr_val = vcpu_e500->pid[1];
  break;
 case 134:
  *spr_val = vcpu_e500->pid[2];
  break;
 case 145:
  *spr_val = vcpu->arch.shared->mas0;
  break;
 case 144:
  *spr_val = vcpu->arch.shared->mas1;
  break;
 case 143:
  *spr_val = vcpu->arch.shared->mas2;
  break;
 case 142:
  *spr_val = (u32)vcpu->arch.shared->mas7_3;
  break;
 case 141:
  *spr_val = vcpu->arch.shared->mas4;
  break;
 case 140:
  *spr_val = vcpu->arch.shared->mas6;
  break;
 case 139:
  *spr_val = vcpu->arch.shared->mas7_3 >> 32;
  break;

 case 157:
  *spr_val = vcpu->arch.decar;
  break;
 case 131:
  *spr_val = vcpu->arch.tlbcfg[0];
  break;
 case 129:
  *spr_val = vcpu->arch.tlbcfg[1];
  break;
 case 130:
  if (!has_feature(vcpu, VCPU_FTR_MMU_V2))
   return EMULATE_FAIL;
  *spr_val = vcpu->arch.tlbps[0];
  break;
 case 128:
  if (!has_feature(vcpu, VCPU_FTR_MMU_V2))
   return EMULATE_FAIL;
  *spr_val = vcpu->arch.tlbps[1];
  break;
 case 147:
  *spr_val = vcpu_e500->l1csr0;
  break;
 case 146:
  *spr_val = vcpu_e500->l1csr1;
  break;
 case 155:
  *spr_val = vcpu_e500->hid0;
  break;
 case 154:
  *spr_val = vcpu_e500->hid1;
  break;
 case 132:
  *spr_val = vcpu_e500->svr;
  break;

 case 137:
  *spr_val = 0;
  break;

 case 138:
  *spr_val = vcpu->arch.mmucfg;
  break;
 case 156:
  if (!has_feature(vcpu, VCPU_FTR_MMU_V2))
   return EMULATE_FAIL;




  *spr_val = vcpu->arch.eptcfg;
  break;

 case 133:
  *spr_val = vcpu->arch.pwrmgtcr0;
  break;
 case 150:
  *spr_val = vcpu->arch.ivor[BOOKE_IRQPRIO_PERFORMANCE_MONITOR];
  break;
 default:
  emulated = kvmppc_booke_emulate_mfspr(vcpu, sprn, spr_val);
 }

 return emulated;
}
