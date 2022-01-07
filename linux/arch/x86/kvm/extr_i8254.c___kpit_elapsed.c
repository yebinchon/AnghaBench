
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_kpit_state {scalar_t__ period; int timer; } ;
struct kvm_pit {struct kvm_kpit_state pit_state; } ;
typedef scalar_t__ s64 ;
typedef int ktime_t ;


 int hrtimer_get_remaining (int *) ;
 scalar_t__ ktime_to_ns (int ) ;

__attribute__((used)) static s64 __kpit_elapsed(struct kvm_pit *pit)
{
 s64 elapsed;
 ktime_t remaining;
 struct kvm_kpit_state *ps = &pit->pit_state;

 if (!ps->period)
  return 0;
 remaining = hrtimer_get_remaining(&ps->timer);
 elapsed = ps->period - ktime_to_ns(remaining);

 return elapsed;
}
