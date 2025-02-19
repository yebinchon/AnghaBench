
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct rtl8366_smi {int parent; } ;


 int EINVAL ;
 int ETIMEDOUT ;
 int REG_RD (struct rtl8366_smi*,int ,scalar_t__*) ;
 int REG_WR (struct rtl8366_smi*,int ,scalar_t__) ;
 int RTL8367B_IA_ADDRESS_REG ;
 scalar_t__ RTL8367B_IA_CTRL_CMD_MASK ;
 int RTL8367B_IA_CTRL_REG ;
 scalar_t__ RTL8367B_IA_CTRL_RW_WRITE ;
 scalar_t__ RTL8367B_IA_STATUS_PHY_BUSY ;
 int RTL8367B_IA_STATUS_REG ;
 int RTL8367B_IA_WRITE_DATA_REG ;
 scalar_t__ RTL8367B_INTERNAL_PHY_REG (scalar_t__,scalar_t__) ;
 scalar_t__ RTL8367B_PHY_ADDR_MAX ;
 scalar_t__ RTL8367B_PHY_REG_MAX ;
 int dev_dbg (int ,char*,scalar_t__,scalar_t__,scalar_t__) ;
 int dev_err (int ,char*) ;
 int udelay (int) ;

__attribute__((used)) static int rtl8367b_write_phy_reg(struct rtl8366_smi *smi,
     u32 phy_addr, u32 phy_reg, u32 val)
{
 int timeout;
 u32 data;
 int err;

 dev_dbg(smi->parent, "phy_write: addr:%02x, reg:%02x, val:%04x\n",
  phy_addr, phy_reg, val);

 if (phy_addr > RTL8367B_PHY_ADDR_MAX)
  return -EINVAL;

 if (phy_reg > RTL8367B_PHY_REG_MAX)
  return -EINVAL;

 REG_RD(smi, RTL8367B_IA_STATUS_REG, &data);
 if (data & RTL8367B_IA_STATUS_PHY_BUSY)
  return -ETIMEDOUT;


 REG_WR(smi, RTL8367B_IA_WRITE_DATA_REG, val);


 REG_WR(smi, RTL8367B_IA_ADDRESS_REG,
        RTL8367B_INTERNAL_PHY_REG(phy_addr, phy_reg));


 REG_WR(smi, RTL8367B_IA_CTRL_REG,
        RTL8367B_IA_CTRL_CMD_MASK | RTL8367B_IA_CTRL_RW_WRITE);

 timeout = 5;
 do {
  REG_RD(smi, RTL8367B_IA_STATUS_REG, &data);
  if ((data & RTL8367B_IA_STATUS_PHY_BUSY) == 0)
   break;

  if (timeout--) {
   dev_err(smi->parent, "phy write timed out\n");
   return -ETIMEDOUT;
  }

  udelay(1);
 } while (1);

 return 0;
}
