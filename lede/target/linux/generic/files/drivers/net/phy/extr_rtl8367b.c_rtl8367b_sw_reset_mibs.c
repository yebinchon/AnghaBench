
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switch_val {int dummy; } ;
struct switch_dev {int dummy; } ;
struct switch_attr {int dummy; } ;
struct rtl8366_smi {int dummy; } ;


 int RTL8367B_MIB_CTRL0_GLOBAL_RESET_MASK ;
 int RTL8367B_MIB_CTRL0_REG (int ) ;
 int rtl8366_smi_rmwr (struct rtl8366_smi*,int ,int ,int ) ;
 struct rtl8366_smi* sw_to_rtl8366_smi (struct switch_dev*) ;

__attribute__((used)) static int rtl8367b_sw_reset_mibs(struct switch_dev *dev,
      const struct switch_attr *attr,
      struct switch_val *val)
{
 struct rtl8366_smi *smi = sw_to_rtl8366_smi(dev);

 return rtl8366_smi_rmwr(smi, RTL8367B_MIB_CTRL0_REG(0), 0,
    RTL8367B_MIB_CTRL0_GLOBAL_RESET_MASK);
}
