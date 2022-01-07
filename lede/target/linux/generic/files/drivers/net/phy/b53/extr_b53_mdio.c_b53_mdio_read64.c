
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct mii_bus {int dummy; } ;
struct b53_device {struct mii_bus* priv; } ;


 int B53_PSEUDO_PHY ;
 int REG_MII_ADDR_READ ;
 scalar_t__ REG_MII_DATA0 ;
 int b53_mdio_op (struct b53_device*,int ,int ,int ) ;
 int mdiobus_read (struct mii_bus*,int ,scalar_t__) ;

__attribute__((used)) static int b53_mdio_read64(struct b53_device *dev, u8 page, u8 reg, u64 *val)
{
 struct mii_bus *bus = dev->priv;
 u64 temp = 0;
 int i;
 int ret;

 ret = b53_mdio_op(dev, page, reg, REG_MII_ADDR_READ);
 if (ret)
  return ret;

 for (i = 3; i >= 0; i--) {
  temp <<= 16;
  temp |= mdiobus_read(bus, B53_PSEUDO_PHY, REG_MII_DATA0 + i);
 }

 *val = temp;

 return 0;
}
