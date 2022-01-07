
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_4__ {scalar_t__ tv64; } ;
struct TYPE_5__ {scalar_t__ tv64; } ;
struct TYPE_6__ {scalar_t__ timing_last_exit; int last_exit_type; TYPE_1__ timing_exit; TYPE_2__ timing_last_enter; } ;
struct kvm_vcpu {TYPE_3__ arch; } ;


 int TIMEINGUEST ;
 int add_exit_timing (struct kvm_vcpu*,scalar_t__,int) ;
 scalar_t__ unlikely (int) ;

void kvmppc_update_timing_stats(struct kvm_vcpu *vcpu)
{
 u64 exit = vcpu->arch.timing_last_exit;
 u64 enter = vcpu->arch.timing_last_enter.tv64;


 vcpu->arch.timing_last_exit = vcpu->arch.timing_exit.tv64;

 if (unlikely(vcpu->arch.last_exit_type == 0xDEAD || exit == 0))
  return;


 add_exit_timing(vcpu, (enter - exit), vcpu->arch.last_exit_type);

 add_exit_timing(vcpu, (vcpu->arch.timing_last_exit - enter),
   TIMEINGUEST);
}
