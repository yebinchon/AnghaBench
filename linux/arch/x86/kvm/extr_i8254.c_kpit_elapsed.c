
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_pit {int dummy; } ;
struct kvm_kpit_channel_state {int count_load_time; } ;
typedef int s64 ;


 int __kpit_elapsed (struct kvm_pit*) ;
 int ktime_get () ;
 int ktime_sub (int ,int ) ;
 int ktime_to_ns (int ) ;

__attribute__((used)) static s64 kpit_elapsed(struct kvm_pit *pit, struct kvm_kpit_channel_state *c,
   int channel)
{
 if (channel == 0)
  return __kpit_elapsed(pit);

 return ktime_to_ns(ktime_sub(ktime_get(), c->count_load_time));
}
