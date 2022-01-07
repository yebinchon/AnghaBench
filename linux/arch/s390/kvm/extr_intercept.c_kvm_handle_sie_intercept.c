
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* sie_block; } ;
struct TYPE_4__ {int exit_io_request; int exit_external_request; } ;
struct kvm_vcpu {TYPE_3__ arch; TYPE_1__ stat; int kvm; } ;
struct TYPE_5__ {int icptcode; int icptstatus; } ;


 int EOPNOTSUPP ;
 int handle_external_interrupt (struct kvm_vcpu*) ;
 int handle_instruction (struct kvm_vcpu*) ;
 int handle_operexc (struct kvm_vcpu*) ;
 int handle_partial_execution (struct kvm_vcpu*) ;
 int handle_prog (struct kvm_vcpu*) ;
 int handle_stop (struct kvm_vcpu*) ;
 int handle_validity (struct kvm_vcpu*) ;
 scalar_t__ kvm_is_ucontrol (int ) ;
 int kvm_s390_handle_per_ifetch_icpt (struct kvm_vcpu*) ;
 int kvm_s390_handle_wait (struct kvm_vcpu*) ;
 int kvm_s390_skey_check_enable (struct kvm_vcpu*) ;

int kvm_handle_sie_intercept(struct kvm_vcpu *vcpu)
{
 int rc, per_rc = 0;

 if (kvm_is_ucontrol(vcpu->kvm))
  return -EOPNOTSUPP;

 switch (vcpu->arch.sie_block->icptcode) {
 case 137:
  vcpu->stat.exit_external_request++;
  return 0;
 case 135:
  vcpu->stat.exit_io_request++;
  return 0;
 case 136:
  rc = handle_instruction(vcpu);
  break;
 case 131:
  return handle_prog(vcpu);
 case 138:
  return handle_external_interrupt(vcpu);
 case 128:
  return kvm_s390_handle_wait(vcpu);
 case 129:
  return handle_validity(vcpu);
 case 130:
  return handle_stop(vcpu);
 case 133:
  rc = handle_operexc(vcpu);
  break;
 case 132:
  rc = handle_partial_execution(vcpu);
  break;
 case 134:
  rc = kvm_s390_skey_check_enable(vcpu);
  break;
 default:
  return -EOPNOTSUPP;
 }


 if (vcpu->arch.sie_block->icptstatus & 0x02 &&
     (!rc || rc == -EOPNOTSUPP))
  per_rc = kvm_s390_handle_per_ifetch_icpt(vcpu);
 return per_rc ? per_rc : rc;
}
