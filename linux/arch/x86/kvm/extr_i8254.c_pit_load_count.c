
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct kvm_kpit_state {TYPE_1__* channels; } ;
struct kvm_pit {struct kvm_kpit_state pit_state; } ;
struct TYPE_2__ {int count; int mode; int count_load_time; } ;


 int create_pit_timer (struct kvm_pit*,int,int) ;
 int destroy_pit_timer (struct kvm_pit*) ;
 int ktime_get () ;
 int pr_debug (char*,int,int) ;

__attribute__((used)) static void pit_load_count(struct kvm_pit *pit, int channel, u32 val)
{
 struct kvm_kpit_state *ps = &pit->pit_state;

 pr_debug("load_count val is %d, channel is %d\n", val, channel);





 if (val == 0)
  val = 0x10000;

 ps->channels[channel].count = val;

 if (channel != 0) {
  ps->channels[channel].count_load_time = ktime_get();
  return;
 }



 switch (ps->channels[0].mode) {
 case 0:
 case 1:

 case 4:
  create_pit_timer(pit, val, 0);
  break;
 case 2:
 case 3:
  create_pit_timer(pit, val, 1);
  break;
 default:
  destroy_pit_timer(pit);
 }
}
