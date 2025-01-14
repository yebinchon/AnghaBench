
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct kvm_kpit_channel_state* channels; } ;
struct kvm_pit {TYPE_1__ pit_state; } ;
struct kvm_kpit_channel_state {int mode; int count; } ;
typedef int s64 ;


 int KVM_PIT_FREQ ;
 int NSEC_PER_SEC ;
 int kpit_elapsed (struct kvm_pit*,struct kvm_kpit_channel_state*,int) ;
 int mod_64 (int ,int ) ;
 int mul_u64_u32_div (int ,int ,int ) ;

__attribute__((used)) static int pit_get_out(struct kvm_pit *pit, int channel)
{
 struct kvm_kpit_channel_state *c = &pit->pit_state.channels[channel];
 s64 d, t;
 int out;

 t = kpit_elapsed(pit, c, channel);
 d = mul_u64_u32_div(t, KVM_PIT_FREQ, NSEC_PER_SEC);

 switch (c->mode) {
 default:
 case 0:
  out = (d >= c->count);
  break;
 case 1:
  out = (d < c->count);
  break;
 case 2:
  out = ((mod_64(d, c->count) == 0) && (d != 0));
  break;
 case 3:
  out = (mod_64(d, c->count) < ((c->count + 1) >> 1));
  break;
 case 4:
 case 5:
  out = (d == c->count);
  break;
 }

 return out;
}
