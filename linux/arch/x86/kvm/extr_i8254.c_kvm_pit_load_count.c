
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_3__ {TYPE_2__* channels; int lock; } ;
struct kvm_pit {TYPE_1__ pit_state; } ;
struct TYPE_4__ {int mode; } ;


 int WARN_ON (int) ;
 int WARN_ON_ONCE (int) ;
 int mutex_is_locked (int *) ;
 int pit_load_count (struct kvm_pit*,int,int ) ;

void kvm_pit_load_count(struct kvm_pit *pit, int channel, u32 val,
  int hpet_legacy_start)
{
 u8 saved_mode;

 WARN_ON_ONCE(!mutex_is_locked(&pit->pit_state.lock));

 if (hpet_legacy_start) {

  WARN_ON(channel != 0);
  saved_mode = pit->pit_state.channels[0].mode;
  pit->pit_state.channels[0].mode = 0xff;
  pit_load_count(pit, channel, val);
  pit->pit_state.channels[0].mode = saved_mode;
 } else {
  pit_load_count(pit, channel, val);
 }
}
