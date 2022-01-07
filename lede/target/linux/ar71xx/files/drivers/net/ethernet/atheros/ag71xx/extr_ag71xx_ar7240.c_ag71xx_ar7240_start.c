
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ar7240sw {int swdev; } ;
struct ag71xx {int duplex; int link_work; TYPE_1__* dev; int speed; struct ar7240sw* phy_priv; } ;
struct TYPE_2__ {int dev_addr; } ;


 int HZ ;
 int SPEED_1000 ;
 int ar7240_hw_apply (int *) ;
 int ar7240_set_addr (struct ar7240sw*,int ) ;
 int ar7240sw_reset (struct ar7240sw*) ;
 int schedule_delayed_work (int *,int) ;

void ag71xx_ar7240_start(struct ag71xx *ag)
{
 struct ar7240sw *as = ag->phy_priv;

 ar7240sw_reset(as);

 ag->speed = SPEED_1000;
 ag->duplex = 1;

 ar7240_set_addr(as, ag->dev->dev_addr);
 ar7240_hw_apply(&as->swdev);

 schedule_delayed_work(&ag->link_work, HZ / 10);
}
