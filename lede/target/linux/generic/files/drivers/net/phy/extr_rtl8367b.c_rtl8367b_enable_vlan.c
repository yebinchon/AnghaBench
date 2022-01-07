
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8366_smi {int dummy; } ;


 int RTL8367B_VLAN_CTRL_ENABLE ;
 int RTL8367B_VLAN_CTRL_REG ;
 int rtl8366_smi_rmwr (struct rtl8366_smi*,int ,int ,int ) ;

__attribute__((used)) static int rtl8367b_enable_vlan(struct rtl8366_smi *smi, int enable)
{
 return rtl8366_smi_rmwr(smi, RTL8367B_VLAN_CTRL_REG,
    RTL8367B_VLAN_CTRL_ENABLE,
    (enable) ? RTL8367B_VLAN_CTRL_ENABLE : 0);
}
