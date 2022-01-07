
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mii_bus {int mdio_lock; int (* write ) (struct mii_bus*,int,int ,int ) ;} ;
struct ar8xxx_priv {struct mii_bus* mii_bus; } ;


 int MII_ATH_DBG_ADDR ;
 int MII_ATH_DBG_DATA ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct mii_bus*,int,int ,int ) ;
 int stub2 (struct mii_bus*,int,int ,int ) ;

void
ar8xxx_phy_dbg_write(struct ar8xxx_priv *priv, int phy_addr,
       u16 dbg_addr, u16 dbg_data)
{
 struct mii_bus *bus = priv->mii_bus;

 mutex_lock(&bus->mdio_lock);
 bus->write(bus, phy_addr, MII_ATH_DBG_ADDR, dbg_addr);
 bus->write(bus, phy_addr, MII_ATH_DBG_DATA, dbg_data);
 mutex_unlock(&bus->mdio_lock);
}
