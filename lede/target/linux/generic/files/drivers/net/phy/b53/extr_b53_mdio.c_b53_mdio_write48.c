
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct mii_bus {int dummy; } ;
struct b53_device {struct mii_bus* priv; } ;


 int B53_PSEUDO_PHY ;
 int REG_MII_ADDR_WRITE ;
 scalar_t__ REG_MII_DATA0 ;
 int b53_mdio_op (struct b53_device*,int ,int ,int ) ;
 int mdiobus_write (struct mii_bus*,int ,scalar_t__,int) ;

__attribute__((used)) static int b53_mdio_write48(struct b53_device *dev, u8 page, u8 reg,
        u64 value)
{
 struct mii_bus *bus = dev->priv;
 unsigned i;
 u64 temp = value;

 for (i = 0; i < 3; i++) {
  int ret = mdiobus_write(bus, B53_PSEUDO_PHY, REG_MII_DATA0 + i,
        temp & 0xffff);
  if (ret)
   return ret;
  temp >>= 16;
 }

 return b53_mdio_op(dev, page, reg, REG_MII_ADDR_WRITE);

}
