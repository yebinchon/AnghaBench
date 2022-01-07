
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtl_priv {int dev; } ;
struct TYPE_2__ {scalar_t__ addr; } ;
struct phy_device {TYPE_1__ mdio; struct rtl_priv* priv; } ;


 int NRESTART ;
 int NWAY ;
 int RTL_PORT_REG (int,int ) ;
 int rtl_set (int *,int ,int) ;

__attribute__((used)) static int
rtl8306_config_aneg(struct phy_device *pdev)
{
 struct rtl_priv *priv = pdev->priv;


 if (pdev->mdio.addr == 0)
  return 0;


 rtl_set(&priv->dev, RTL_PORT_REG(4, NWAY), 1);
 rtl_set(&priv->dev, RTL_PORT_REG(4, NRESTART), 1);

 return 0;
}
