
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rtl_priv {unsigned int page; scalar_t__ fixup; struct mii_bus* bus; } ;
struct mii_bus {int (* read ) (struct mii_bus*,int ,int ) ;int (* write ) (struct mii_bus*,int ,int ,int) ;} ;


 int BUG_ON (int) ;
 unsigned int RTL8306_NUM_PAGES ;
 int RTL8306_REG_PAGE ;
 int RTL8306_REG_PAGE_HI ;
 int RTL8306_REG_PAGE_LO ;
 int stub1 (struct mii_bus*,int ,int ) ;
 int stub2 (struct mii_bus*,int ,int ,int) ;

__attribute__((used)) static inline void
rtl_set_page(struct rtl_priv *priv, unsigned int page)
{
 struct mii_bus *bus = priv->bus;
 u16 pgsel;

 if (priv->fixup)
  return;

 if (priv->page == page)
  return;

 BUG_ON(page > RTL8306_NUM_PAGES);
 pgsel = bus->read(bus, 0, RTL8306_REG_PAGE);
 pgsel &= ~(RTL8306_REG_PAGE_LO | RTL8306_REG_PAGE_HI);
 if (page & (1 << 0))
  pgsel |= RTL8306_REG_PAGE_LO;
 if (!(page & (1 << 1)))
  pgsel |= RTL8306_REG_PAGE_HI;
 bus->write(bus, 0, RTL8306_REG_PAGE, pgsel);
}
