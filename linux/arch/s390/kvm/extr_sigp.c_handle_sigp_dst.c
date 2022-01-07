
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int instruction_sigp_unknown; int instruction_sigp_cpu_reset; int instruction_sigp_init_cpu_reset; int instruction_sigp_restart; int instruction_sigp_start; int instruction_sigp_sense_running; int instruction_sigp_cond_emergency; int instruction_sigp_prefix; int instruction_sigp_store_status; int instruction_sigp_stop_store_status; int instruction_sigp_stop; int instruction_sigp_emergency; int instruction_sigp_external_call; int instruction_sigp_sense; } ;
struct kvm_vcpu {int vcpu_id; TYPE_1__ stat; int kvm; } ;


 int EOPNOTSUPP ;
 int SIGP_CC_NOT_OPERATIONAL ;
 int VCPU_EVENT (struct kvm_vcpu*,int,char*,int,int ) ;
 int __prepare_sigp_cpu_reset (struct kvm_vcpu*,struct kvm_vcpu*,int) ;
 int __prepare_sigp_re_start (struct kvm_vcpu*,struct kvm_vcpu*,int) ;
 int __prepare_sigp_unknown (struct kvm_vcpu*,struct kvm_vcpu*) ;
 int __sigp_conditional_emergency (struct kvm_vcpu*,struct kvm_vcpu*,int ,int *) ;
 int __sigp_emergency (struct kvm_vcpu*,struct kvm_vcpu*) ;
 int __sigp_external_call (struct kvm_vcpu*,struct kvm_vcpu*,int *) ;
 int __sigp_sense (struct kvm_vcpu*,struct kvm_vcpu*,int *) ;
 int __sigp_sense_running (struct kvm_vcpu*,struct kvm_vcpu*,int *) ;
 int __sigp_set_prefix (struct kvm_vcpu*,struct kvm_vcpu*,int ,int *) ;
 int __sigp_stop (struct kvm_vcpu*,struct kvm_vcpu*) ;
 int __sigp_stop_and_store_status (struct kvm_vcpu*,struct kvm_vcpu*,int *) ;
 int __sigp_store_status_at_addr (struct kvm_vcpu*,struct kvm_vcpu*,int ,int *) ;
 struct kvm_vcpu* kvm_get_vcpu_by_id (int ,int ) ;

__attribute__((used)) static int handle_sigp_dst(struct kvm_vcpu *vcpu, u8 order_code,
      u16 cpu_addr, u32 parameter, u64 *status_reg)
{
 int rc;
 struct kvm_vcpu *dst_vcpu = kvm_get_vcpu_by_id(vcpu->kvm, cpu_addr);

 if (!dst_vcpu)
  return SIGP_CC_NOT_OPERATIONAL;

 switch (order_code) {
 case 134:
  vcpu->stat.instruction_sigp_sense++;
  rc = __sigp_sense(vcpu, dst_vcpu, status_reg);
  break;
 case 137:
  vcpu->stat.instruction_sigp_external_call++;
  rc = __sigp_external_call(vcpu, dst_vcpu, status_reg);
  break;
 case 138:
  vcpu->stat.instruction_sigp_emergency++;
  rc = __sigp_emergency(vcpu, dst_vcpu);
  break;
 case 130:
  vcpu->stat.instruction_sigp_stop++;
  rc = __sigp_stop(vcpu, dst_vcpu);
  break;
 case 129:
  vcpu->stat.instruction_sigp_stop_store_status++;
  rc = __sigp_stop_and_store_status(vcpu, dst_vcpu, status_reg);
  break;
 case 128:
  vcpu->stat.instruction_sigp_store_status++;
  rc = __sigp_store_status_at_addr(vcpu, dst_vcpu, parameter,
       status_reg);
  break;
 case 132:
  vcpu->stat.instruction_sigp_prefix++;
  rc = __sigp_set_prefix(vcpu, dst_vcpu, parameter, status_reg);
  break;
 case 140:
  vcpu->stat.instruction_sigp_cond_emergency++;
  rc = __sigp_conditional_emergency(vcpu, dst_vcpu, parameter,
        status_reg);
  break;
 case 133:
  vcpu->stat.instruction_sigp_sense_running++;
  rc = __sigp_sense_running(vcpu, dst_vcpu, status_reg);
  break;
 case 131:
  vcpu->stat.instruction_sigp_start++;
  rc = __prepare_sigp_re_start(vcpu, dst_vcpu, order_code);
  break;
 case 135:
  vcpu->stat.instruction_sigp_restart++;
  rc = __prepare_sigp_re_start(vcpu, dst_vcpu, order_code);
  break;
 case 136:
  vcpu->stat.instruction_sigp_init_cpu_reset++;
  rc = __prepare_sigp_cpu_reset(vcpu, dst_vcpu, order_code);
  break;
 case 139:
  vcpu->stat.instruction_sigp_cpu_reset++;
  rc = __prepare_sigp_cpu_reset(vcpu, dst_vcpu, order_code);
  break;
 default:
  vcpu->stat.instruction_sigp_unknown++;
  rc = __prepare_sigp_unknown(vcpu, dst_vcpu);
 }

 if (rc == -EOPNOTSUPP)
  VCPU_EVENT(vcpu, 4,
      "sigp order %u -> cpu %x: handled in user space",
      order_code, dst_vcpu->vcpu_id);

 return rc;
}
