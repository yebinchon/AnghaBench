
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mii_bus {int mdio_lock; int (* read ) (struct mii_bus*,int,int ) ;} ;
struct ar8xxx_priv {struct mii_bus* mii_bus; } ;


 int MII_ATH_MMD_DATA ;
 int ar8xxx_phy_mmd_prep (struct mii_bus*,int,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct mii_bus*,int,int ) ;

u16
ar8xxx_phy_mmd_read(struct ar8xxx_priv *priv, int phy_addr, u16 addr, u16 reg)
{
 struct mii_bus *bus = priv->mii_bus;
 u16 data;

 mutex_lock(&bus->mdio_lock);
 ar8xxx_phy_mmd_prep(bus, phy_addr, addr, reg);
 data = bus->read(bus, phy_addr, MII_ATH_MMD_DATA);
 mutex_unlock(&bus->mdio_lock);

 return data;
}
