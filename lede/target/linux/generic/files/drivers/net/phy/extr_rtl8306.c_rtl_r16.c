
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switch_dev {int dummy; } ;
struct rtl_priv {struct mii_bus* bus; } ;
struct mii_bus {int (* read ) (struct mii_bus*,unsigned int,unsigned int) ;} ;


 int rtl_set_page (struct rtl_priv*,unsigned int) ;
 int stub1 (struct mii_bus*,unsigned int,unsigned int) ;
 struct rtl_priv* to_rtl (struct switch_dev*) ;

__attribute__((used)) static inline int
rtl_r16(struct switch_dev *dev, unsigned int page, unsigned int phy, unsigned int reg)
{
 struct rtl_priv *priv = to_rtl(dev);
 struct mii_bus *bus = priv->bus;

 rtl_set_page(priv, page);
 return bus->read(bus, phy, reg);
}
