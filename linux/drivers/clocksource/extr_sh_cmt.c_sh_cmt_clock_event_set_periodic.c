
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 int sh_cmt_clock_event_set_state (struct clock_event_device*,int) ;

__attribute__((used)) static int sh_cmt_clock_event_set_periodic(struct clock_event_device *ced)
{
 return sh_cmt_clock_event_set_state(ced, 1);
}
