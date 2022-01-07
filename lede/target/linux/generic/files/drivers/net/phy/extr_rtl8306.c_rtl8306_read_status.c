
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct switch_dev {int dummy; } ;
struct rtl_priv {struct switch_dev dev; } ;
struct TYPE_2__ {int addr; } ;
struct phy_device {int link; int attached_dev; int (* adjust_link ) (int ) ;int state; void* duplex; void* speed; TYPE_1__ mdio; struct rtl_priv* priv; } ;


 int DUPLEX ;
 void* DUPLEX_FULL ;
 void* DUPLEX_HALF ;
 int LINK ;
 int PHY_NOLINK ;
 int PHY_RUNNING ;
 int RTL_PORT_REG (int,int ) ;
 int SPEED ;
 void* SPEED_10 ;
 void* SPEED_100 ;
 int netif_carrier_off (int ) ;
 int netif_carrier_on (int ) ;
 scalar_t__ rtl_get (struct switch_dev*,int ) ;
 int stub1 (int ) ;
 int stub2 (int ) ;

__attribute__((used)) static int
rtl8306_read_status(struct phy_device *pdev)
{
 struct rtl_priv *priv = pdev->priv;
 struct switch_dev *dev = &priv->dev;

 if (pdev->mdio.addr == 4) {

  pdev->speed = rtl_get(dev, RTL_PORT_REG(4, SPEED)) ? SPEED_100 : SPEED_10;
  pdev->duplex = rtl_get(dev, RTL_PORT_REG(4, DUPLEX)) ? DUPLEX_FULL : DUPLEX_HALF;
  pdev->link = !!rtl_get(dev, RTL_PORT_REG(4, LINK));
 } else {

  pdev->speed = SPEED_100;
  pdev->duplex = DUPLEX_FULL;
  pdev->link = 1;
 }





 if (pdev->link) {
  pdev->state = PHY_RUNNING;
  netif_carrier_on(pdev->attached_dev);
  pdev->adjust_link(pdev->attached_dev);
 } else {
  pdev->state = PHY_NOLINK;
  netif_carrier_off(pdev->attached_dev);
  pdev->adjust_link(pdev->attached_dev);
 }

 return 0;
}
