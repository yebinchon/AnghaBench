
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct rtl8366_smi {int dummy; } ;
struct mii_bus {struct rtl8366_smi* priv; } ;


 int rtl8367b_read_phy_reg (struct rtl8366_smi*,int,int,int *) ;
 int rtl8367b_write_phy_reg (struct rtl8366_smi*,int,int,int ) ;

__attribute__((used)) static int rtl8367b_mii_write(struct mii_bus *bus, int addr, int reg, u16 val)
{
 struct rtl8366_smi *smi = bus->priv;
 u32 t;
 int err;

 err = rtl8367b_write_phy_reg(smi, addr, reg, val);
 if (err)
  return err;


 (void) rtl8367b_read_phy_reg(smi, addr, reg, &t);

 return err;
}
