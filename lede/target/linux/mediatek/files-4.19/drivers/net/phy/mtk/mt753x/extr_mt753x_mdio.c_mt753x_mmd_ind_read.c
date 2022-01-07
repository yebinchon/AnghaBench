
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct gsw_mt753x {int phy_base; int mii_lock; } ;


 int MDIO_CMD_READ ;
 int MDIO_CMD_WRITE ;
 int MDIO_ST_C22 ;
 int MII_MMD_ACC_CTL_REG ;
 int MII_MMD_ADDR_DATA_REG ;
 int MMD_ADDR ;
 int MMD_CMD_S ;
 int MMD_DATA ;
 int MMD_DEVAD_M ;
 int MMD_DEVAD_S ;
 int MT753X_NUM_PHYS ;
 int MT753X_SMI_ADDR_MASK ;
 int mt753x_mii_rw (struct gsw_mt753x*,int,int ,int,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int mt753x_mmd_ind_read(struct gsw_mt753x *gsw, int addr, int devad, u16 reg)
{
 u16 val;

 if (addr < MT753X_NUM_PHYS)
  addr = (gsw->phy_base + addr) & MT753X_SMI_ADDR_MASK;

 mutex_lock(&gsw->mii_lock);

 mt753x_mii_rw(gsw, addr, MII_MMD_ACC_CTL_REG,
        (MMD_ADDR << MMD_CMD_S) |
        ((devad << MMD_DEVAD_S) & MMD_DEVAD_M),
        MDIO_CMD_WRITE, MDIO_ST_C22);

 mt753x_mii_rw(gsw, addr, MII_MMD_ADDR_DATA_REG, reg,
        MDIO_CMD_WRITE, MDIO_ST_C22);

 mt753x_mii_rw(gsw, addr, MII_MMD_ACC_CTL_REG,
        (MMD_DATA << MMD_CMD_S) |
        ((devad << MMD_DEVAD_S) & MMD_DEVAD_M),
        MDIO_CMD_WRITE, MDIO_ST_C22);

 val = mt753x_mii_rw(gsw, addr, MII_MMD_ADDR_DATA_REG, 0,
       MDIO_CMD_READ, MDIO_ST_C22);

 mutex_unlock(&gsw->mii_lock);

 return val;
}
