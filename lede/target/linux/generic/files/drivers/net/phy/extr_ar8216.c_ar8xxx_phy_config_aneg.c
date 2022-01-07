
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ addr; } ;
struct phy_device {TYPE_1__ mdio; } ;


 int genphy_config_aneg (struct phy_device*) ;

__attribute__((used)) static int
ar8xxx_phy_config_aneg(struct phy_device *phydev)
{
 if (phydev->mdio.addr == 0)
  return 0;

 return genphy_config_aneg(phydev);
}
