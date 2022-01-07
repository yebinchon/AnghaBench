
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 int ced_to_priv (struct clock_event_device*) ;
 int timer8_stop (int ) ;

__attribute__((used)) static int timer8_clock_event_shutdown(struct clock_event_device *ced)
{
 timer8_stop(ced_to_priv(ced));
 return 0;
}
