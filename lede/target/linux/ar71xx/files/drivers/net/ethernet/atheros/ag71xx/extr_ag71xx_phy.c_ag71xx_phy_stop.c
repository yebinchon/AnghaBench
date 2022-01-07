
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ag71xx_platform_data {scalar_t__ switch_data; scalar_t__ mii_bus_dev; } ;
struct ag71xx {int lock; scalar_t__ link; scalar_t__ phy_dev; } ;


 int ag71xx_ar7240_stop (struct ag71xx*) ;
 struct ag71xx_platform_data* ag71xx_get_pdata (struct ag71xx*) ;
 int ag71xx_link_adjust (struct ag71xx*) ;
 int phy_stop (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void ag71xx_phy_stop(struct ag71xx *ag)
{
 struct ag71xx_platform_data *pdata = ag71xx_get_pdata(ag);
 unsigned long flags;

 if (ag->phy_dev)
  phy_stop(ag->phy_dev);
 else if (pdata->mii_bus_dev && pdata->switch_data)
  ag71xx_ar7240_stop(ag);

 spin_lock_irqsave(&ag->lock, flags);
 if (ag->link) {
  ag->link = 0;
  ag71xx_link_adjust(ag);
 }
 spin_unlock_irqrestore(&ag->lock, flags);
}
