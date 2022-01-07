
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ tv64; } ;
struct TYPE_4__ {scalar_t__ tv64; } ;
struct TYPE_6__ {int last_exit_type; int* timing_min_duration; int exit_timing_lock; TYPE_2__ timing_last_enter; TYPE_1__ timing_exit; scalar_t__ timing_last_exit; scalar_t__* timing_sum_quad_duration; scalar_t__* timing_sum_duration; scalar_t__* timing_max_duration; scalar_t__* timing_count_type; } ;
struct kvm_vcpu {TYPE_3__ arch; } ;


 int __NUMBER_OF_KVM_EXIT_TYPES ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void kvmppc_init_timing_stats(struct kvm_vcpu *vcpu)
{
 int i;


 mutex_lock(&vcpu->arch.exit_timing_lock);

 vcpu->arch.last_exit_type = 0xDEAD;
 for (i = 0; i < __NUMBER_OF_KVM_EXIT_TYPES; i++) {
  vcpu->arch.timing_count_type[i] = 0;
  vcpu->arch.timing_max_duration[i] = 0;
  vcpu->arch.timing_min_duration[i] = 0xFFFFFFFF;
  vcpu->arch.timing_sum_duration[i] = 0;
  vcpu->arch.timing_sum_quad_duration[i] = 0;
 }
 vcpu->arch.timing_last_exit = 0;
 vcpu->arch.timing_exit.tv64 = 0;
 vcpu->arch.timing_last_enter.tv64 = 0;

 mutex_unlock(&vcpu->arch.exit_timing_lock);
}
