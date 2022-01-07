
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kvm_arch {scalar_t__ nr_vcpus_matched_tsc; int use_master_clock; int boot_vcpu_runs_old_kvmclock; int backwards_tsc_observed; int master_cycle_now; int master_kernel_ns; } ;
struct kvm {int online_vcpus; struct kvm_arch arch; } ;
struct TYPE_3__ {int vclock_mode; } ;
struct TYPE_4__ {TYPE_1__ clock; } ;


 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int) ;
 int kvm_get_time_and_clockread (int *,int *) ;
 int kvm_guest_has_master_clock ;
 TYPE_2__ pvclock_gtod_data ;
 int trace_kvm_update_master_clock (int,int,int) ;

__attribute__((used)) static void pvclock_update_vm_gtod_copy(struct kvm *kvm)
{
}
