
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtl8366_smi {struct mii_bus* ext_mbus; } ;
struct mii_bus {int mdio_lock; int (* write ) (struct mii_bus*,int ,int ,int ) ;} ;


 int BUG_ON (int ) ;
 int MDC_MDIO_ADDRESS_REG ;
 int MDC_MDIO_ADDR_OP ;
 int MDC_MDIO_CTRL0_REG ;
 int MDC_MDIO_CTRL1_REG ;
 int MDC_MDIO_DATA_WRITE_REG ;
 int MDC_MDIO_START_OP ;
 int MDC_MDIO_START_REG ;
 int MDC_MDIO_WRITE_OP ;
 int MDC_REALTEK_PHY_ADDR ;
 int in_interrupt () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct mii_bus*,int ,int ,int ) ;
 int stub2 (struct mii_bus*,int ,int ,int ) ;
 int stub3 (struct mii_bus*,int ,int ,int ) ;
 int stub4 (struct mii_bus*,int ,int ,int ) ;
 int stub5 (struct mii_bus*,int ,int ,int ) ;
 int stub6 (struct mii_bus*,int ,int ,int ) ;
 int stub7 (struct mii_bus*,int ,int ,int ) ;
 int stub8 (struct mii_bus*,int ,int ,int ) ;

__attribute__((used)) static int __rtl8366_mdio_write_reg(struct rtl8366_smi *smi, u32 addr, u32 data)
{
 u32 phy_id = MDC_REALTEK_PHY_ADDR;
 struct mii_bus *mbus = smi->ext_mbus;

 BUG_ON(in_interrupt());

 mutex_lock(&mbus->mdio_lock);


 mbus->write(mbus, phy_id, MDC_MDIO_START_REG, MDC_MDIO_START_OP);


 mbus->write(mbus, phy_id, MDC_MDIO_CTRL0_REG, MDC_MDIO_ADDR_OP);


 mbus->write(mbus, phy_id, MDC_MDIO_START_REG, MDC_MDIO_START_OP);


 mbus->write(mbus, phy_id, MDC_MDIO_ADDRESS_REG, addr);


 mbus->write(mbus, phy_id, MDC_MDIO_START_REG, MDC_MDIO_START_OP);


 mbus->write(mbus, phy_id, MDC_MDIO_DATA_WRITE_REG, data);


 mbus->write(mbus, phy_id, MDC_MDIO_START_REG, MDC_MDIO_START_OP);


 mbus->write(mbus, phy_id, MDC_MDIO_CTRL1_REG, MDC_MDIO_WRITE_OP);

 mutex_unlock(&mbus->mdio_lock);
 return 0;
}
