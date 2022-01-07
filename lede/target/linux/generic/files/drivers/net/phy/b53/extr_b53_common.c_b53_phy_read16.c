
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct switch_dev {int dummy; } ;
struct b53_device {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* phy_read16 ) (struct b53_device*,int,int ,int *) ;} ;


 int B53_PORT_MII_PAGE (int) ;
 int b53_read16 (struct b53_device*,int ,int ,int *) ;
 int stub1 (struct b53_device*,int,int ,int *) ;
 struct b53_device* sw_to_b53 (struct switch_dev*) ;

__attribute__((used)) static int b53_phy_read16(struct switch_dev *dev, int addr, u8 reg, u16 *value)
{
 struct b53_device *priv = sw_to_b53(dev);

 if (priv->ops->phy_read16)
  return priv->ops->phy_read16(priv, addr, reg, value);

 return b53_read16(priv, B53_PORT_MII_PAGE(addr), reg, value);
}
