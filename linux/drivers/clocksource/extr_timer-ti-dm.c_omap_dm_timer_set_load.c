
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u32 ;
struct TYPE_2__ {unsigned int tclr; unsigned int tldr; } ;
struct omap_dm_timer {TYPE_1__ context; } ;


 int EINVAL ;
 unsigned int OMAP_TIMER_CTRL_AR ;
 int OMAP_TIMER_CTRL_REG ;
 int OMAP_TIMER_LOAD_REG ;
 int OMAP_TIMER_TRIGGER_REG ;
 int omap_dm_timer_disable (struct omap_dm_timer*) ;
 int omap_dm_timer_enable (struct omap_dm_timer*) ;
 unsigned int omap_dm_timer_read_reg (struct omap_dm_timer*,int ) ;
 int omap_dm_timer_write_reg (struct omap_dm_timer*,int ,unsigned int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int omap_dm_timer_set_load(struct omap_dm_timer *timer, int autoreload,
      unsigned int load)
{
 u32 l;

 if (unlikely(!timer))
  return -EINVAL;

 omap_dm_timer_enable(timer);
 l = omap_dm_timer_read_reg(timer, OMAP_TIMER_CTRL_REG);
 if (autoreload)
  l |= OMAP_TIMER_CTRL_AR;
 else
  l &= ~OMAP_TIMER_CTRL_AR;
 omap_dm_timer_write_reg(timer, OMAP_TIMER_CTRL_REG, l);
 omap_dm_timer_write_reg(timer, OMAP_TIMER_LOAD_REG, load);

 omap_dm_timer_write_reg(timer, OMAP_TIMER_TRIGGER_REG, 0);

 timer->context.tclr = l;
 timer->context.tldr = load;
 omap_dm_timer_disable(timer);
 return 0;
}
