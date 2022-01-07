
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct kvm_kpit_channel_state* channels; } ;
struct kvm_pit {TYPE_1__ pit_state; } ;
struct kvm_kpit_channel_state {int status_latched; int status; int rw_mode; int mode; int bcd; } ;


 int pit_get_out (struct kvm_pit*,int) ;

__attribute__((used)) static void pit_latch_status(struct kvm_pit *pit, int channel)
{
 struct kvm_kpit_channel_state *c = &pit->pit_state.channels[channel];

 if (!c->status_latched) {

  c->status = ((pit_get_out(pit, channel) << 7) |
    (c->rw_mode << 4) |
    (c->mode << 1) |
    c->bcd);
  c->status_latched = 1;
 }
}
