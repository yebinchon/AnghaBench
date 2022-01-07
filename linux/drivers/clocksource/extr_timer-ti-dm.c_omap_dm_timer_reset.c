
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct omap_dm_timer {int revision; scalar_t__ posted; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int ETIMEDOUT ;
 int OMAP_TIMER_IF_CTRL_REG ;
 int OMAP_TIMER_OCP_CFG_OFFSET ;
 int OMAP_TIMER_V1_SYS_STAT_OFFSET ;
 int __omap_dm_timer_read (struct omap_dm_timer*,int ,int ) ;
 int __omap_dm_timer_write (struct omap_dm_timer*,int ,int,int ) ;
 int dev_err (int *,char*) ;
 int omap_dm_timer_write_reg (struct omap_dm_timer*,int ,int) ;

__attribute__((used)) static int omap_dm_timer_reset(struct omap_dm_timer *timer)
{
 u32 l, timeout = 100000;

 if (timer->revision != 1)
  return -EINVAL;

 omap_dm_timer_write_reg(timer, OMAP_TIMER_IF_CTRL_REG, 0x06);

 do {
  l = __omap_dm_timer_read(timer,
      OMAP_TIMER_V1_SYS_STAT_OFFSET, 0);
 } while (!l && timeout--);

 if (!timeout) {
  dev_err(&timer->pdev->dev, "Timer failed to reset\n");
  return -ETIMEDOUT;
 }


 l = __omap_dm_timer_read(timer, OMAP_TIMER_OCP_CFG_OFFSET, 0);
 l |= 0x2 << 0x3;
 __omap_dm_timer_write(timer, OMAP_TIMER_OCP_CFG_OFFSET, l, 0);

 timer->posted = 0;

 return 0;
}
