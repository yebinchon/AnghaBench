
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef int uint8_t ;
struct TYPE_14__ {TYPE_2__* sie_block; } ;
struct kvm_vcpu {TYPE_9__* run; TYPE_10__* kvm; TYPE_3__ arch; } ;
struct ap_queue_status {int response_code; } ;
typedef int status ;
struct TYPE_18__ {unsigned long* gprs; } ;
struct TYPE_19__ {TYPE_7__ regs; } ;
struct TYPE_20__ {TYPE_8__ s; } ;
struct TYPE_16__ {int crycbd; TYPE_4__* pqap_hook; } ;
struct TYPE_17__ {TYPE_5__ crypto; } ;
struct TYPE_15__ {int (* hook ) (struct kvm_vcpu*) ;int owner; } ;
struct TYPE_12__ {int mask; } ;
struct TYPE_13__ {int eca; TYPE_1__ gpsw; } ;
struct TYPE_11__ {TYPE_6__ arch; } ;


 int ECA_APIE ;
 int EOPNOTSUPP ;
 int PGM_PRIVILEGED_OP ;
 int PGM_SPECIFICATION ;
 int PSW_MASK_PSTATE ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int ap_instructions_available () ;
 int kvm_s390_inject_program_int (struct kvm_vcpu*,int ) ;
 int kvm_s390_set_psw_cc (struct kvm_vcpu*,int) ;
 int memcpy (int*,struct ap_queue_status*,int) ;
 int module_put (int ) ;
 int stub1 (struct kvm_vcpu*) ;
 int test_kvm_facility (TYPE_10__*,int) ;
 int try_module_get (int ) ;

__attribute__((used)) static int handle_pqap(struct kvm_vcpu *vcpu)
{
 struct ap_queue_status status = {};
 unsigned long reg0;
 int ret;
 uint8_t fc;


 if (!ap_instructions_available())
  return -EOPNOTSUPP;

 if (!(vcpu->arch.sie_block->eca & ECA_APIE))
  return -EOPNOTSUPP;






 reg0 = vcpu->run->s.regs.gprs[0];
 fc = (reg0 >> 24) & 0xff;
 if (WARN_ON_ONCE(fc != 0x03))
  return -EOPNOTSUPP;


 if (vcpu->arch.sie_block->gpsw.mask & PSW_MASK_PSTATE)
  return kvm_s390_inject_program_int(vcpu, PGM_PRIVILEGED_OP);



 if (reg0 & 0x007f0000UL)
  return kvm_s390_inject_program_int(vcpu, PGM_SPECIFICATION);

 if (!test_kvm_facility(vcpu->kvm, 15) && (reg0 & 0x00800000UL))
  return kvm_s390_inject_program_int(vcpu, PGM_SPECIFICATION);

 if (!(vcpu->kvm->arch.crypto.crycbd & 0x02) && (reg0 & 0x0000c0f0UL))
  return kvm_s390_inject_program_int(vcpu, PGM_SPECIFICATION);



 if (!test_kvm_facility(vcpu->kvm, 65))
  return kvm_s390_inject_program_int(vcpu, PGM_SPECIFICATION);





 if (vcpu->kvm->arch.crypto.pqap_hook) {
  if (!try_module_get(vcpu->kvm->arch.crypto.pqap_hook->owner))
   return -EOPNOTSUPP;
  ret = vcpu->kvm->arch.crypto.pqap_hook->hook(vcpu);
  module_put(vcpu->kvm->arch.crypto.pqap_hook->owner);
  if (!ret && vcpu->run->s.regs.gprs[1] & 0x00ff0000)
   kvm_s390_set_psw_cc(vcpu, 3);
  return ret;
 }





 status.response_code = 0x01;
 memcpy(&vcpu->run->s.regs.gprs[1], &status, sizeof(status));
 kvm_s390_set_psw_cc(vcpu, 3);
 return 0;
}
