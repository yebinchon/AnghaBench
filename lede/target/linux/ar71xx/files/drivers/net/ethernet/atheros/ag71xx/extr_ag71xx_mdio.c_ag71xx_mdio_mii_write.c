
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ag71xx_mdio {int dummy; } ;


 int AG71XX_REG_MII_ADDR ;
 int AG71XX_REG_MII_CTRL ;
 int DBG (char*,int,int,int) ;
 int MII_ADDR_SHIFT ;
 int ag71xx_mdio_wait_busy (struct ag71xx_mdio*) ;
 int ag71xx_mdio_wr (struct ag71xx_mdio*,int ,int) ;

void ag71xx_mdio_mii_write(struct ag71xx_mdio *am, int addr, int reg, u16 val)
{
 DBG("mii_write: addr=%04x, reg=%04x, value=%04x\n", addr, reg, val);

 ag71xx_mdio_wr(am, AG71XX_REG_MII_ADDR,
   ((addr & 0xff) << MII_ADDR_SHIFT) | (reg & 0xff));
 ag71xx_mdio_wr(am, AG71XX_REG_MII_CTRL, val);

 ag71xx_mdio_wait_busy(am);
}
