
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtl8366_smi {int dummy; } ;


 int EINVAL ;
 int RTL8366S_NUM_PORTS ;
 int RTL8366S_PHY_POWER_SAVING_CTRL_REG ;
 int RTL8366S_PHY_POWER_SAVING_MASK ;
 int rtl8366s_read_phy_reg (struct rtl8366_smi*,int,int ,int ,int *) ;
 int rtl8366s_write_phy_reg (struct rtl8366_smi*,int,int ,int ,int ) ;

__attribute__((used)) static int rtl8366s_set_green_port(struct rtl8366_smi *smi, int port, int enable)
{
 int err;
 u32 phyData;

 if (port >= RTL8366S_NUM_PORTS)
  return -EINVAL;

 err = rtl8366s_read_phy_reg(smi, port, 0, RTL8366S_PHY_POWER_SAVING_CTRL_REG, &phyData);
 if (err)
  return err;

 if (enable)
  phyData |= RTL8366S_PHY_POWER_SAVING_MASK;
 else
  phyData &= ~RTL8366S_PHY_POWER_SAVING_MASK;

 err = rtl8366s_write_phy_reg(smi, port, 0, RTL8366S_PHY_POWER_SAVING_CTRL_REG, phyData);
 if (err)
  return err;

 return 0;
}
