
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct mii_bus {int dummy; } ;
struct b53_device {int current_page; struct mii_bus* priv; } ;


 int B53_PSEUDO_PHY ;
 int EIO ;
 int REG_MII_ADDR ;
 int REG_MII_ADDR_READ ;
 int REG_MII_ADDR_WRITE ;
 int REG_MII_PAGE ;
 int REG_MII_PAGE_ENABLE ;
 scalar_t__ WARN_ON (int) ;
 int mdiobus_read (struct mii_bus*,int ,int ) ;
 int mdiobus_write (struct mii_bus*,int ,int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int b53_mdio_op(struct b53_device *dev, u8 page, u8 reg, u16 op)
{
 int i;
 u16 v;
 int ret;
 struct mii_bus *bus = dev->priv;

 if (dev->current_page != page) {

  v = (page << 8) | REG_MII_PAGE_ENABLE;
  ret = mdiobus_write(bus, B53_PSEUDO_PHY, REG_MII_PAGE, v);
  if (ret)
   return ret;
  dev->current_page = page;
 }


 v = (reg << 8) | op;
 ret = mdiobus_write(bus, B53_PSEUDO_PHY, REG_MII_ADDR, v);
 if (ret)
  return ret;


 for (i = 0; i < 5; ++i) {
  v = mdiobus_read(bus, B53_PSEUDO_PHY, REG_MII_ADDR);
  if (!(v & (REG_MII_ADDR_WRITE | REG_MII_ADDR_READ)))
   break;
  usleep_range(10, 100);
 }

 if (WARN_ON(i == 5))
  return -EIO;

 return 0;
}
