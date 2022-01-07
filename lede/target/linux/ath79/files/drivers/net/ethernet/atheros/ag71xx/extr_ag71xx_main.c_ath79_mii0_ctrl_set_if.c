
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ag71xx {int phy_if_mode; } ;


 unsigned int AR71XX_MII0_CTRL_IF_GMII ;
 unsigned int AR71XX_MII0_CTRL_IF_MII ;
 unsigned int AR71XX_MII0_CTRL_IF_RGMII ;
 unsigned int AR71XX_MII0_CTRL_IF_RMII ;




 int WARN (int,char*) ;
 int ath79_mii_ctrl_set_if (struct ag71xx*,unsigned int) ;

__attribute__((used)) static void ath79_mii0_ctrl_set_if(struct ag71xx *ag)
{
 unsigned int mii_if;

 switch (ag->phy_if_mode) {
 case 130:
  mii_if = AR71XX_MII0_CTRL_IF_MII;
  break;
 case 131:
  mii_if = AR71XX_MII0_CTRL_IF_GMII;
  break;
 case 129:
  mii_if = AR71XX_MII0_CTRL_IF_RGMII;
  break;
 case 128:
  mii_if = AR71XX_MII0_CTRL_IF_RMII;
  break;
 default:
  WARN(1, "Impossible PHY mode defined.\n");
  return;
 }

 ath79_mii_ctrl_set_if(ag, mii_if);
}
