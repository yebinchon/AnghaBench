
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rt_timer {int dev; int irq; } ;


 int TIMER_REG_TMR0CTL ;
 int TMR0CTL_MODE_PERIODIC ;
 int TMR0CTL_PRESCALE_VAL ;
 int dev_err (int ,char*) ;
 int dev_name (int ) ;
 int request_irq (int ,int ,int ,int ,struct rt_timer*) ;
 int rt_timer_irq ;
 int rt_timer_w32 (struct rt_timer*,int ,int) ;

__attribute__((used)) static int rt_timer_request(struct rt_timer *rt)
{
 int err = request_irq(rt->irq, rt_timer_irq, 0,
      dev_name(rt->dev), rt);
 if (err) {
  dev_err(rt->dev, "failed to request irq\n");
 } else {
  u32 t = TMR0CTL_MODE_PERIODIC | TMR0CTL_PRESCALE_VAL;
  rt_timer_w32(rt, TIMER_REG_TMR0CTL, t);
 }
 return err;
}
