
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer8_priv {int dummy; } ;
struct clock_event_device {int name; } ;


 struct timer8_priv* ced_to_priv (struct clock_event_device*) ;
 int pr_info (char*,int ) ;
 int timer8_clock_event_start (struct timer8_priv*,int) ;
 int timer8_stop (struct timer8_priv*) ;

__attribute__((used)) static int timer8_clock_event_oneshot(struct clock_event_device *ced)
{
 struct timer8_priv *p = ced_to_priv(ced);

 pr_info("%s: used for oneshot clock events\n", ced->name);
 timer8_stop(p);
 timer8_clock_event_start(p, 0x10000);

 return 0;
}
