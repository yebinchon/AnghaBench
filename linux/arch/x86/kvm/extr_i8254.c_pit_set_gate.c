
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {struct kvm_kpit_channel_state* channels; } ;
struct kvm_pit {TYPE_1__ pit_state; } ;
struct kvm_kpit_channel_state {int mode; int gate; int count_load_time; } ;


 int ktime_get () ;

__attribute__((used)) static void pit_set_gate(struct kvm_pit *pit, int channel, u32 val)
{
 struct kvm_kpit_channel_state *c = &pit->pit_state.channels[channel];

 switch (c->mode) {
 default:
 case 0:
 case 4:

  break;
 case 1:
 case 2:
 case 3:
 case 5:

  if (c->gate < val)
   c->count_load_time = ktime_get();
  break;
 }

 c->gate = val;
}
