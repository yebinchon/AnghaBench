
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* sie_block; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct kvm_s390_pgm_info {int code; int per_access_id; int per_address; int per_atmid; int per_code; int exc_access_id; int trans_exc_code; int data_exc_code; int mon_code; int mon_class_nr; int op_access_id; int flags; } ;
struct TYPE_3__ {int iprcc; int peraid; int peraddr; int peratmid; int perc; int eai; int tecmc; int dxc; int mcn; int oai; } ;


 int KVM_S390_PGM_FLAGS_NO_REWIND ;
 int PGM_PER ;
 int kvm_s390_inject_prog_irq (struct kvm_vcpu*,struct kvm_s390_pgm_info*) ;

__attribute__((used)) static int inject_prog_on_prog_intercept(struct kvm_vcpu *vcpu)
{
 struct kvm_s390_pgm_info pgm_info = {
  .code = vcpu->arch.sie_block->iprcc,

  .flags = KVM_S390_PGM_FLAGS_NO_REWIND,
 };

 switch (vcpu->arch.sie_block->iprcc & ~PGM_PER) {
 case 153:
 case 146:
 case 143:
 case 142:
 case 141:
 case 140:
 case 139:
 case 136:
 case 131:
 case 129:
  pgm_info.trans_exc_code = vcpu->arch.sie_block->tecmc;
  break;
 case 152:
 case 151:
 case 149:
 case 148:
 case 147:
 case 144:
  pgm_info.exc_access_id = vcpu->arch.sie_block->eai;
  break;
 case 150:
 case 137:
 case 134:
 case 133:
 case 132:
 case 130:
  pgm_info.trans_exc_code = vcpu->arch.sie_block->tecmc;
  pgm_info.exc_access_id = vcpu->arch.sie_block->eai;
  pgm_info.op_access_id = vcpu->arch.sie_block->oai;
  break;
 case 138:
  pgm_info.mon_class_nr = vcpu->arch.sie_block->mcn;
  pgm_info.mon_code = vcpu->arch.sie_block->tecmc;
  break;
 case 128:
 case 145:
  pgm_info.data_exc_code = vcpu->arch.sie_block->dxc;
  break;
 case 135:
  pgm_info.trans_exc_code = vcpu->arch.sie_block->tecmc;
  pgm_info.exc_access_id = vcpu->arch.sie_block->eai;
  break;
 default:
  break;
 }

 if (vcpu->arch.sie_block->iprcc & PGM_PER) {
  pgm_info.per_code = vcpu->arch.sie_block->perc;
  pgm_info.per_atmid = vcpu->arch.sie_block->peratmid;
  pgm_info.per_address = vcpu->arch.sie_block->peraddr;
  pgm_info.per_access_id = vcpu->arch.sie_block->peraid;
 }
 return kvm_s390_inject_prog_irq(vcpu, &pgm_info);
}
