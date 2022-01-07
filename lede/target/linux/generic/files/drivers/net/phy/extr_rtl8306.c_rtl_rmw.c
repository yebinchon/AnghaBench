
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct switch_dev {int dummy; } ;
struct rtl_priv {struct mii_bus* bus; } ;
struct mii_bus {int (* read ) (struct mii_bus*,unsigned int,unsigned int) ;int (* write ) (struct mii_bus*,unsigned int,unsigned int,int ) ;} ;


 int rtl_set_page (struct rtl_priv*,unsigned int) ;
 int stub1 (struct mii_bus*,unsigned int,unsigned int) ;
 int stub2 (struct mii_bus*,unsigned int,unsigned int,int ) ;
 int stub3 (struct mii_bus*,unsigned int,unsigned int) ;
 struct rtl_priv* to_rtl (struct switch_dev*) ;

__attribute__((used)) static inline u16
rtl_rmw(struct switch_dev *dev, unsigned int page, unsigned int phy, unsigned int reg, u16 mask, u16 val)
{
 struct rtl_priv *priv = to_rtl(dev);
 struct mii_bus *bus = priv->bus;
 u16 r;

 rtl_set_page(priv, page);
 r = bus->read(bus, phy, reg);
 r &= ~mask;
 r |= val;
 bus->write(bus, phy, reg, r);
 return bus->read(bus, phy, reg);
}
