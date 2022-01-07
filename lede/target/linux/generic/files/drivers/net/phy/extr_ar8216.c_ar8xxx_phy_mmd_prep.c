
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mii_bus {int (* write ) (struct mii_bus*,int,int ,int) ;} ;


 int MII_ATH_MMD_ADDR ;
 int MII_ATH_MMD_DATA ;
 int stub1 (struct mii_bus*,int,int ,int) ;
 int stub2 (struct mii_bus*,int,int ,int) ;
 int stub3 (struct mii_bus*,int,int ,int) ;

__attribute__((used)) static inline void
ar8xxx_phy_mmd_prep(struct mii_bus *bus, int phy_addr, u16 addr, u16 reg)
{
 bus->write(bus, phy_addr, MII_ATH_MMD_ADDR, addr);
 bus->write(bus, phy_addr, MII_ATH_MMD_DATA, reg);
 bus->write(bus, phy_addr, MII_ATH_MMD_ADDR, addr | 0x4000);
}
