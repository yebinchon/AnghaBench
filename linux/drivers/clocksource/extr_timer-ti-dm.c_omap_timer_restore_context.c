
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tclr; int tier; int tsicr; int tmar; int tldr; int tcrr; int twer; } ;
struct omap_dm_timer {TYPE_1__ context; int irq_ena; } ;


 int OMAP_TIMER_COUNTER_REG ;
 int OMAP_TIMER_CTRL_REG ;
 int OMAP_TIMER_IF_CTRL_REG ;
 int OMAP_TIMER_LOAD_REG ;
 int OMAP_TIMER_MATCH_REG ;
 int OMAP_TIMER_WAKEUP_EN_REG ;
 int omap_dm_timer_write_reg (struct omap_dm_timer*,int ,int ) ;
 int writel_relaxed (int ,int ) ;

__attribute__((used)) static void omap_timer_restore_context(struct omap_dm_timer *timer)
{
 omap_dm_timer_write_reg(timer, OMAP_TIMER_WAKEUP_EN_REG,
    timer->context.twer);
 omap_dm_timer_write_reg(timer, OMAP_TIMER_COUNTER_REG,
    timer->context.tcrr);
 omap_dm_timer_write_reg(timer, OMAP_TIMER_LOAD_REG,
    timer->context.tldr);
 omap_dm_timer_write_reg(timer, OMAP_TIMER_MATCH_REG,
    timer->context.tmar);
 omap_dm_timer_write_reg(timer, OMAP_TIMER_IF_CTRL_REG,
    timer->context.tsicr);
 writel_relaxed(timer->context.tier, timer->irq_ena);
 omap_dm_timer_write_reg(timer, OMAP_TIMER_CTRL_REG,
    timer->context.tclr);
}
