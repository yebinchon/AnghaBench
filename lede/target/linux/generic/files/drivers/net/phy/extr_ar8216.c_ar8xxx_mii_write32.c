
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct mii_bus {int (* write ) (struct mii_bus*,int,int,int) ;} ;
struct ar8xxx_priv {TYPE_1__* chip; struct mii_bus* mii_bus; } ;
struct TYPE_2__ {scalar_t__ mii_lo_first; } ;


 int stub1 (struct mii_bus*,int,int,int) ;
 int stub2 (struct mii_bus*,int,int,int) ;
 int stub3 (struct mii_bus*,int,int,int) ;
 int stub4 (struct mii_bus*,int,int,int) ;

void
ar8xxx_mii_write32(struct ar8xxx_priv *priv, int phy_id, int regnum, u32 val)
{
 struct mii_bus *bus = priv->mii_bus;
 u16 lo, hi;

 lo = val & 0xffff;
 hi = (u16) (val >> 16);

 if (priv->chip->mii_lo_first)
 {
  bus->write(bus, phy_id, regnum, lo);
  bus->write(bus, phy_id, regnum + 1, hi);
 } else {
  bus->write(bus, phy_id, regnum + 1, hi);
  bus->write(bus, phy_id, regnum, lo);
 }
}
