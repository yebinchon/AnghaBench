
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int tier; int twer; } ;
struct omap_dm_timer {int revision; TYPE_1__ context; int irq_dis; int irq_ena; } ;


 int EINVAL ;
 int OMAP_TIMER_WAKEUP_EN_REG ;
 int omap_dm_timer_disable (struct omap_dm_timer*) ;
 int omap_dm_timer_enable (struct omap_dm_timer*) ;
 int omap_dm_timer_read_reg (struct omap_dm_timer*,int ) ;
 int omap_dm_timer_write_reg (struct omap_dm_timer*,int ,int) ;
 int readl_relaxed (int ) ;
 scalar_t__ unlikely (int) ;
 int writel_relaxed (int,int ) ;

__attribute__((used)) static int omap_dm_timer_set_int_disable(struct omap_dm_timer *timer, u32 mask)
{
 u32 l = mask;

 if (unlikely(!timer))
  return -EINVAL;

 omap_dm_timer_enable(timer);

 if (timer->revision == 1)
  l = readl_relaxed(timer->irq_ena) & ~mask;

 writel_relaxed(l, timer->irq_dis);
 l = omap_dm_timer_read_reg(timer, OMAP_TIMER_WAKEUP_EN_REG) & ~mask;
 omap_dm_timer_write_reg(timer, OMAP_TIMER_WAKEUP_EN_REG, l);


 timer->context.tier &= ~mask;
 timer->context.twer &= ~mask;
 omap_dm_timer_disable(timer);
 return 0;
}
