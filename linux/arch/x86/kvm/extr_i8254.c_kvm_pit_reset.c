
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct kvm_kpit_channel_state* channels; scalar_t__ flags; } ;
struct kvm_pit {TYPE_1__ pit_state; } ;
struct kvm_kpit_channel_state {int mode; int gate; } ;


 int kvm_pit_reset_reinject (struct kvm_pit*) ;
 int pit_load_count (struct kvm_pit*,int,int ) ;

__attribute__((used)) static void kvm_pit_reset(struct kvm_pit *pit)
{
 int i;
 struct kvm_kpit_channel_state *c;

 pit->pit_state.flags = 0;
 for (i = 0; i < 3; i++) {
  c = &pit->pit_state.channels[i];
  c->mode = 0xff;
  c->gate = (i != 2);
  pit_load_count(pit, i, 0);
 }

 kvm_pit_reset_reinject(pit);
}
