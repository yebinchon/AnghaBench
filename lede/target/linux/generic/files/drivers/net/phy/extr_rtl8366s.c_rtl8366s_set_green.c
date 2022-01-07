
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtl8366_smi {int dummy; } ;


 int REG_RMW (struct rtl8366_smi*,int ,int ,int) ;
 int RTL8366S_GREEN_ETHERNET_CTRL_MASK ;
 int RTL8366S_GREEN_ETHERNET_CTRL_REG ;
 int RTL8366S_GREEN_ETHERNET_RX_BIT ;
 int RTL8366S_GREEN_ETHERNET_TX_BIT ;
 unsigned int RTL8366S_PHY_NO_MAX ;
 int rtl8366s_set_green_port (struct rtl8366_smi*,unsigned int,int ) ;

__attribute__((used)) static int rtl8366s_set_green(struct rtl8366_smi *smi, int enable)
{
 int err;
 unsigned i;
 u32 data = 0;

 if (!enable) {
  for (i = 0; i <= RTL8366S_PHY_NO_MAX; i++) {
   rtl8366s_set_green_port(smi, i, 0);
  }
 }

 if (enable)
  data = (RTL8366S_GREEN_ETHERNET_TX_BIT | RTL8366S_GREEN_ETHERNET_RX_BIT);

 REG_RMW(smi, RTL8366S_GREEN_ETHERNET_CTRL_REG, RTL8366S_GREEN_ETHERNET_CTRL_MASK, data);

 return 0;
}
