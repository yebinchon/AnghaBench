
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ag71xx_mdio {TYPE_1__* mii_bus; } ;
struct TYPE_2__ {int name; } ;


 int AG71XX_REG_MII_ADDR ;
 int AG71XX_REG_MII_CFG ;
 int AG71XX_REG_MII_CMD ;
 int AG71XX_REG_MII_CTRL ;
 int AG71XX_REG_MII_IND ;
 int AG71XX_REG_MII_STATUS ;
 int DBG (char*,int ,int ,int ,int ) ;
 int ag71xx_mdio_rr (struct ag71xx_mdio*,int ) ;

__attribute__((used)) static void ag71xx_mdio_dump_regs(struct ag71xx_mdio *am)
{
 DBG("%s: mii_cfg=%08x, mii_cmd=%08x, mii_addr=%08x\n",
  am->mii_bus->name,
  ag71xx_mdio_rr(am, AG71XX_REG_MII_CFG),
  ag71xx_mdio_rr(am, AG71XX_REG_MII_CMD),
  ag71xx_mdio_rr(am, AG71XX_REG_MII_ADDR));
 DBG("%s: mii_ctrl=%08x, mii_status=%08x, mii_ind=%08x\n",
  am->mii_bus->name,
  ag71xx_mdio_rr(am, AG71XX_REG_MII_CTRL),
  ag71xx_mdio_rr(am, AG71XX_REG_MII_STATUS),
  ag71xx_mdio_rr(am, AG71XX_REG_MII_IND));
}
