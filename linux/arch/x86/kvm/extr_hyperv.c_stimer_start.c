
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_3__ {scalar_t__ periodic; } ;
struct kvm_vcpu_hv_stimer {scalar_t__ exp_time; scalar_t__ count; int timer; int index; TYPE_1__ config; } ;
typedef int ktime_t ;
struct TYPE_4__ {int vcpu_id; int kvm; } ;


 int HRTIMER_MODE_ABS ;
 int div64_u64_rem (scalar_t__,scalar_t__,scalar_t__*) ;
 scalar_t__ get_time_ref_counter (int ) ;
 int hrtimer_start (int *,int ,int ) ;
 int ktime_add_ns (int ,int) ;
 int ktime_get () ;
 int stimer_mark_pending (struct kvm_vcpu_hv_stimer*,int) ;
 TYPE_2__* stimer_to_vcpu (struct kvm_vcpu_hv_stimer*) ;
 int trace_kvm_hv_stimer_start_one_shot (int ,int ,scalar_t__,scalar_t__) ;
 int trace_kvm_hv_stimer_start_periodic (int ,int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static int stimer_start(struct kvm_vcpu_hv_stimer *stimer)
{
 u64 time_now;
 ktime_t ktime_now;

 time_now = get_time_ref_counter(stimer_to_vcpu(stimer)->kvm);
 ktime_now = ktime_get();

 if (stimer->config.periodic) {
  if (stimer->exp_time) {
   if (time_now >= stimer->exp_time) {
    u64 remainder;

    div64_u64_rem(time_now - stimer->exp_time,
           stimer->count, &remainder);
    stimer->exp_time =
     time_now + (stimer->count - remainder);
   }
  } else
   stimer->exp_time = time_now + stimer->count;

  trace_kvm_hv_stimer_start_periodic(
     stimer_to_vcpu(stimer)->vcpu_id,
     stimer->index,
     time_now, stimer->exp_time);

  hrtimer_start(&stimer->timer,
         ktime_add_ns(ktime_now,
        100 * (stimer->exp_time - time_now)),
         HRTIMER_MODE_ABS);
  return 0;
 }
 stimer->exp_time = stimer->count;
 if (time_now >= stimer->count) {






  stimer_mark_pending(stimer, 0);
  return 0;
 }

 trace_kvm_hv_stimer_start_one_shot(stimer_to_vcpu(stimer)->vcpu_id,
        stimer->index,
        time_now, stimer->count);

 hrtimer_start(&stimer->timer,
        ktime_add_ns(ktime_now, 100 * (stimer->count - time_now)),
        HRTIMER_MODE_ABS);
 return 0;
}
