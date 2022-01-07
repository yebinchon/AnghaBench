
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct mii_bus {struct ag71xx_mdio* priv; } ;
struct ag71xx_mdio {TYPE_1__* pdata; } ;
struct TYPE_2__ {scalar_t__ builtin_switch; } ;


 int ag71xx_mdio_mii_write (struct ag71xx_mdio*,int,int,int ) ;
 int ar7240sw_phy_write (struct mii_bus*,int,int,int ) ;

__attribute__((used)) static int ag71xx_mdio_write(struct mii_bus *bus, int addr, int reg, u16 val)
{
 struct ag71xx_mdio *am = bus->priv;

 if (am->pdata->builtin_switch)
  ar7240sw_phy_write(bus, addr, reg, val);
 else
  ag71xx_mdio_mii_write(am, addr, reg, val);
 return 0;
}
