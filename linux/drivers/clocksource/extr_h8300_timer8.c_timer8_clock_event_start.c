
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer8_priv {int dummy; } ;


 int timer8_set_next (struct timer8_priv*,unsigned long) ;
 int timer8_start (struct timer8_priv*) ;

__attribute__((used)) static void timer8_clock_event_start(struct timer8_priv *p, unsigned long delta)
{
 timer8_start(p);
 timer8_set_next(p, delta);
}
