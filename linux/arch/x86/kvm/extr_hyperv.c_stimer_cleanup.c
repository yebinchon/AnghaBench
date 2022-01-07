
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_vcpu_hv_stimer {int msg_pending; scalar_t__ exp_time; int index; int timer; } ;
struct kvm_vcpu {int vcpu_id; } ;
struct TYPE_2__ {int stimer_pending_bitmap; } ;


 int clear_bit (int ,int ) ;
 int hrtimer_cancel (int *) ;
 struct kvm_vcpu* stimer_to_vcpu (struct kvm_vcpu_hv_stimer*) ;
 int trace_kvm_hv_stimer_cleanup (int ,int ) ;
 TYPE_1__* vcpu_to_hv_vcpu (struct kvm_vcpu*) ;

__attribute__((used)) static void stimer_cleanup(struct kvm_vcpu_hv_stimer *stimer)
{
 struct kvm_vcpu *vcpu = stimer_to_vcpu(stimer);

 trace_kvm_hv_stimer_cleanup(stimer_to_vcpu(stimer)->vcpu_id,
        stimer->index);

 hrtimer_cancel(&stimer->timer);
 clear_bit(stimer->index,
    vcpu_to_hv_vcpu(vcpu)->stimer_pending_bitmap);
 stimer->msg_pending = 0;
 stimer->exp_time = 0;
}
