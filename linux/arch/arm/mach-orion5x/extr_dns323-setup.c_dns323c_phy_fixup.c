
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dev_flags; } ;


 int MARVELL_PHY_M1118_DNS323_LEDS ;

__attribute__((used)) static int dns323c_phy_fixup(struct phy_device *phy)
{
 phy->dev_flags |= MARVELL_PHY_M1118_DNS323_LEDS;

 return 0;
}
