
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int vclock_mode; } ;
struct pvclock_gtod_data {TYPE_1__ clock; } ;
struct kvm_vcpu {TYPE_2__* kvm; int vcpu_id; } ;
struct kvm_arch {scalar_t__ nr_vcpus_matched_tsc; scalar_t__ use_master_clock; } ;
struct TYPE_4__ {int online_vcpus; struct kvm_arch arch; } ;


 int KVM_REQ_MASTERCLOCK_UPDATE ;
 scalar_t__ atomic_read (int *) ;
 scalar_t__ gtod_is_based_on_tsc (int ) ;
 int kvm_make_request (int ,struct kvm_vcpu*) ;
 struct pvclock_gtod_data pvclock_gtod_data ;
 int trace_kvm_track_tsc (int ,scalar_t__,scalar_t__,scalar_t__,int ) ;

__attribute__((used)) static void kvm_track_tsc_matching(struct kvm_vcpu *vcpu)
{
}
