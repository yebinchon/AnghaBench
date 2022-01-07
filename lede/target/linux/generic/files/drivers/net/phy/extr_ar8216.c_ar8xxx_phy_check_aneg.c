
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct phy_device {scalar_t__ autoneg; TYPE_1__ mdio; } ;


 scalar_t__ AUTONEG_ENABLE ;
 int BMCR_ANENABLE ;
 int BMCR_ANRESTART ;
 int MII_BMCR ;
 int dev_info (int *,char*) ;
 int phy_read (struct phy_device*,int ) ;
 int phy_write (struct phy_device*,int ,int) ;

__attribute__((used)) static int
ar8xxx_phy_check_aneg(struct phy_device *phydev)
{
 int ret;

 if (phydev->autoneg != AUTONEG_ENABLE)
  return 0;





 ret = phy_read(phydev, MII_BMCR);
 if (ret < 0)
  return ret;
 if (ret & BMCR_ANENABLE)
  return 0;

 dev_info(&phydev->mdio.dev, "ANEG disabled, re-enabling ...\n");
 ret |= BMCR_ANENABLE | BMCR_ANRESTART;
 return phy_write(phydev, MII_BMCR, ret);
}
