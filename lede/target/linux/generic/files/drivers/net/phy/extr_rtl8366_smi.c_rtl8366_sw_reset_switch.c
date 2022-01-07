
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct switch_dev {int dummy; } ;
struct rtl8366_smi {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* setup ) (struct rtl8366_smi*) ;} ;


 int rtl8366_enable_all_ports (struct rtl8366_smi*,int) ;
 int rtl8366_enable_vlan (struct rtl8366_smi*,int) ;
 int rtl8366_reset (struct rtl8366_smi*) ;
 int rtl8366_reset_vlan (struct rtl8366_smi*) ;
 int stub1 (struct rtl8366_smi*) ;
 struct rtl8366_smi* sw_to_rtl8366_smi (struct switch_dev*) ;

int rtl8366_sw_reset_switch(struct switch_dev *dev)
{
 struct rtl8366_smi *smi = sw_to_rtl8366_smi(dev);
 int err;

 err = rtl8366_reset(smi);
 if (err)
  return err;

 err = smi->ops->setup(smi);
 if (err)
  return err;

 err = rtl8366_reset_vlan(smi);
 if (err)
  return err;

 err = rtl8366_enable_vlan(smi, 1);
 if (err)
  return err;

 return rtl8366_enable_all_ports(smi, 1);
}
