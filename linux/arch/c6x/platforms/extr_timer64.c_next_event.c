
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 int timer64_config (unsigned long) ;

__attribute__((used)) static int next_event(unsigned long delta,
        struct clock_event_device *evt)
{
 timer64_config(delta);
 return 0;
}
