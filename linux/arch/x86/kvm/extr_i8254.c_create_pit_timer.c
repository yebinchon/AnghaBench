
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kvm_kpit_state {int flags; scalar_t__ period; int is_periodic; int timer; } ;
struct kvm_pit {int expired; struct kvm* kvm; struct kvm_kpit_state pit_state; } ;
struct kvm {int dummy; } ;
typedef scalar_t__ s64 ;


 int HRTIMER_MODE_ABS ;
 int KVM_PIT_FLAGS_HPET_LEGACY ;
 int KVM_PIT_FREQ ;
 int NSEC_PER_SEC ;
 int hrtimer_cancel (int *) ;
 int hrtimer_start (int *,int ,int ) ;
 int ioapic_in_kernel (struct kvm*) ;
 int kthread_flush_work (int *) ;
 int ktime_add_ns (int ,scalar_t__) ;
 int ktime_get () ;
 int kvm_pit_reset_reinject (struct kvm_pit*) ;
 long long min_timer_period_us ;
 scalar_t__ mul_u64_u32_div (int ,int ,int ) ;
 int pr_debug (char*,scalar_t__) ;
 int pr_info_ratelimited (char*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void create_pit_timer(struct kvm_pit *pit, u32 val, int is_period)
{
 struct kvm_kpit_state *ps = &pit->pit_state;
 struct kvm *kvm = pit->kvm;
 s64 interval;

 if (!ioapic_in_kernel(kvm) ||
     ps->flags & KVM_PIT_FLAGS_HPET_LEGACY)
  return;

 interval = mul_u64_u32_div(val, NSEC_PER_SEC, KVM_PIT_FREQ);

 pr_debug("create pit timer, interval is %llu nsec\n", interval);


 hrtimer_cancel(&ps->timer);
 kthread_flush_work(&pit->expired);
 ps->period = interval;
 ps->is_periodic = is_period;

 kvm_pit_reset_reinject(pit);






 if (ps->is_periodic) {
  s64 min_period = min_timer_period_us * 1000LL;

  if (ps->period < min_period) {
   pr_info_ratelimited(
       "kvm: requested %lld ns "
       "i8254 timer period limited to %lld ns\n",
       ps->period, min_period);
   ps->period = min_period;
  }
 }

 hrtimer_start(&ps->timer, ktime_add_ns(ktime_get(), interval),
        HRTIMER_MODE_ABS);
}
