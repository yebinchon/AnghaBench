
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 int sh_tmu_clock_event_set_state (struct clock_event_device*,int ) ;

__attribute__((used)) static int sh_tmu_clock_event_set_oneshot(struct clock_event_device *ced)
{
 return sh_tmu_clock_event_set_state(ced, 0);
}
