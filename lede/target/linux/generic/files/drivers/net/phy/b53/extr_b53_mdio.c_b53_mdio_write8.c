
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mii_bus {int dummy; } ;
struct b53_device {struct mii_bus* priv; } ;


 int B53_PSEUDO_PHY ;
 int REG_MII_ADDR_WRITE ;
 int REG_MII_DATA0 ;
 int b53_mdio_op (struct b53_device*,int ,int ,int ) ;
 int mdiobus_write (struct mii_bus*,int ,int ,int ) ;

__attribute__((used)) static int b53_mdio_write8(struct b53_device *dev, u8 page, u8 reg, u8 value)
{
 struct mii_bus *bus = dev->priv;
 int ret;

 ret = mdiobus_write(bus, B53_PSEUDO_PHY, REG_MII_DATA0, value);
 if (ret)
  return ret;

 return b53_mdio_op(dev, page, reg, REG_MII_ADDR_WRITE);
}
