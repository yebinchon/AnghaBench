
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 int qemu_set_alarm_abs (int ) ;

__attribute__((used)) static int qemu_ce_shutdown(struct clock_event_device *ce)
{


 qemu_set_alarm_abs(0);
 return 0;
}
