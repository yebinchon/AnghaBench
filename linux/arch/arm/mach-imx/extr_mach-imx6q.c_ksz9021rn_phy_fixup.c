
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int CONFIG_PHYLIB ;
 scalar_t__ IS_BUILTIN (int ) ;
 int MICREL_KSZ9021_EXTREG_CTRL ;
 int MICREL_KSZ9021_EXTREG_DATA_WRITE ;
 int MICREL_KSZ9021_RGMII_CLK_CTRL_PAD_SCEW ;
 int MICREL_KSZ9021_RGMII_RX_DATA_PAD_SCEW ;
 int phy_write (struct phy_device*,int ,int) ;

__attribute__((used)) static int ksz9021rn_phy_fixup(struct phy_device *phydev)
{
 if (IS_BUILTIN(CONFIG_PHYLIB)) {

  phy_write(phydev, MICREL_KSZ9021_EXTREG_CTRL,
   0x8000 | MICREL_KSZ9021_RGMII_RX_DATA_PAD_SCEW);
  phy_write(phydev, MICREL_KSZ9021_EXTREG_DATA_WRITE, 0x0000);


  phy_write(phydev, MICREL_KSZ9021_EXTREG_CTRL,
   0x8000 | MICREL_KSZ9021_RGMII_CLK_CTRL_PAD_SCEW);
  phy_write(phydev, MICREL_KSZ9021_EXTREG_DATA_WRITE, 0xf0f0);
  phy_write(phydev, MICREL_KSZ9021_EXTREG_CTRL,
   MICREL_KSZ9021_RGMII_CLK_CTRL_PAD_SCEW);
 }

 return 0;
}
