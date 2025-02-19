
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct kvm_kpit_channel_state* channels; } ;
struct kvm_pit {TYPE_1__ pit_state; } ;
struct kvm_kpit_channel_state {scalar_t__ rw_mode; scalar_t__ count_latched; int latched_count; } ;


 int pit_get_count (struct kvm_pit*,int) ;

__attribute__((used)) static void pit_latch_count(struct kvm_pit *pit, int channel)
{
 struct kvm_kpit_channel_state *c = &pit->pit_state.channels[channel];

 if (!c->count_latched) {
  c->latched_count = pit_get_count(pit, channel);
  c->count_latched = c->rw_mode;
 }
}
