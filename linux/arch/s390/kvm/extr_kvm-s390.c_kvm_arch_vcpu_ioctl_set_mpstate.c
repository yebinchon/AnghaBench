
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kvm_vcpu {TYPE_2__* kvm; } ;
struct kvm_mp_state {int mp_state; } ;
struct TYPE_3__ {int user_cpu_state_ctrl; } ;
struct TYPE_4__ {TYPE_1__ arch; } ;


 int ENXIO ;




 int kvm_s390_vcpu_start (struct kvm_vcpu*) ;
 int kvm_s390_vcpu_stop (struct kvm_vcpu*) ;
 int vcpu_load (struct kvm_vcpu*) ;
 int vcpu_put (struct kvm_vcpu*) ;

int kvm_arch_vcpu_ioctl_set_mpstate(struct kvm_vcpu *vcpu,
        struct kvm_mp_state *mp_state)
{
 int rc = 0;

 vcpu_load(vcpu);


 vcpu->kvm->arch.user_cpu_state_ctrl = 1;

 switch (mp_state->mp_state) {
 case 128:
  kvm_s390_vcpu_stop(vcpu);
  break;
 case 129:
  kvm_s390_vcpu_start(vcpu);
  break;
 case 130:
 case 131:

 default:
  rc = -ENXIO;
 }

 vcpu_put(vcpu);
 return rc;
}
