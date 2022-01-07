
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mii_bus {struct ag71xx_mdio* priv; } ;
struct ag71xx_mdio {TYPE_1__* pdata; } ;
struct TYPE_2__ {int (* reset ) (struct mii_bus*) ;scalar_t__ is_ar934x; scalar_t__ builtin_switch; scalar_t__ is_ar7240; } ;


 int AG71XX_REG_MII_CFG ;
 int MII_CFG_CLK_DIV_10 ;
 int MII_CFG_CLK_DIV_28 ;
 int MII_CFG_CLK_DIV_58 ;
 int MII_CFG_CLK_DIV_6 ;
 int MII_CFG_RESET ;
 int ag71xx_mdio_get_divider (struct ag71xx_mdio*,int*) ;
 int ag71xx_mdio_wr (struct ag71xx_mdio*,int ,int) ;
 int stub1 (struct mii_bus*) ;
 int udelay (int) ;

__attribute__((used)) static int ag71xx_mdio_reset(struct mii_bus *bus)
{
 struct ag71xx_mdio *am = bus->priv;
 u32 t;
 int err;

 err = ag71xx_mdio_get_divider(am, &t);
 if (err) {

  if (am->pdata->is_ar7240)
   t = MII_CFG_CLK_DIV_6;
  else if (am->pdata->builtin_switch && !am->pdata->is_ar934x)
   t = MII_CFG_CLK_DIV_10;
  else if (!am->pdata->builtin_switch && am->pdata->is_ar934x)
   t = MII_CFG_CLK_DIV_58;
  else
   t = MII_CFG_CLK_DIV_28;
 }

 ag71xx_mdio_wr(am, AG71XX_REG_MII_CFG, t | MII_CFG_RESET);
 udelay(100);

 ag71xx_mdio_wr(am, AG71XX_REG_MII_CFG, t);
 udelay(100);

 if (am->pdata->reset)
  am->pdata->reset(bus);

 return 0;
}
