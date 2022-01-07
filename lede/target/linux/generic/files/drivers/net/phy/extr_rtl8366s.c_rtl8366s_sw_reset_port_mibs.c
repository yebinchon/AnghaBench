
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switch_val {int port_vlan; } ;
struct switch_dev {int dummy; } ;
struct switch_attr {int dummy; } ;
struct rtl8366_smi {int dummy; } ;


 int EINVAL ;
 int RTL8366S_MIB_CTRL_REG ;
 int RTL8366S_NUM_PORTS ;
 int rtl8366_smi_rmwr (struct rtl8366_smi*,int ,int ,int) ;
 struct rtl8366_smi* sw_to_rtl8366_smi (struct switch_dev*) ;

__attribute__((used)) static int rtl8366s_sw_reset_port_mibs(struct switch_dev *dev,
           const struct switch_attr *attr,
           struct switch_val *val)
{
 struct rtl8366_smi *smi = sw_to_rtl8366_smi(dev);

 if (val->port_vlan >= RTL8366S_NUM_PORTS)
  return -EINVAL;


 return rtl8366_smi_rmwr(smi, RTL8366S_MIB_CTRL_REG,
    0, (1 << (val->port_vlan + 3)));
}
