
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ag71xx {int phy_dev; } ;


 int phy_disconnect (int ) ;

void ag71xx_phy_disconnect(struct ag71xx *ag)
{
 phy_disconnect(ag->phy_dev);
}
