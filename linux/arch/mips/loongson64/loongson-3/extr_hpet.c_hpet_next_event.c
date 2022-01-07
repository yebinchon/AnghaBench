
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct clock_event_device {int dummy; } ;
typedef scalar_t__ s32 ;


 int ETIME ;
 int HPET_COUNTER ;
 scalar_t__ HPET_MIN_CYCLES ;
 int HPET_T0_CMP ;
 scalar_t__ hpet_read (int ) ;
 int hpet_write (int ,scalar_t__) ;

__attribute__((used)) static int hpet_next_event(unsigned long delta,
  struct clock_event_device *evt)
{
 u32 cnt;
 s32 res;

 cnt = hpet_read(HPET_COUNTER);
 cnt += (u32) delta;
 hpet_write(HPET_T0_CMP, cnt);

 res = (s32)(cnt - hpet_read(HPET_COUNTER));

 return res < HPET_MIN_CYCLES ? -ETIME : 0;
}
