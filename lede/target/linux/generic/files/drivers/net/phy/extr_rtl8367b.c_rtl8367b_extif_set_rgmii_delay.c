
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct rtl8366_smi {int dummy; } ;


 int REG_RMW (struct rtl8366_smi*,int ,unsigned int,unsigned int) ;
 int RTL8367B_EXT_RGMXF_REG (int) ;
 unsigned int RTL8367B_EXT_RGMXF_RXDELAY_MASK ;
 unsigned int RTL8367B_EXT_RGMXF_TXDELAY_MASK ;
 unsigned int RTL8367B_EXT_RGMXF_TXDELAY_SHIFT ;

__attribute__((used)) static int rtl8367b_extif_set_rgmii_delay(struct rtl8366_smi *smi, int id,
      unsigned txdelay, unsigned rxdelay)
{
 u32 mask;
 u32 val;
 int err;

 mask = (RTL8367B_EXT_RGMXF_RXDELAY_MASK |
  (RTL8367B_EXT_RGMXF_TXDELAY_MASK <<
   RTL8367B_EXT_RGMXF_TXDELAY_SHIFT));

 val = rxdelay;
 val |= txdelay << RTL8367B_EXT_RGMXF_TXDELAY_SHIFT;

 REG_RMW(smi, RTL8367B_EXT_RGMXF_REG(id), mask, val);

 return 0;
}
