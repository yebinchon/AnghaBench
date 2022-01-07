
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ i; } ;
struct switch_val {TYPE_1__ value; } ;
struct switch_dev {int dummy; } ;
struct switch_attr {int dummy; } ;
struct rtl8366_smi {int dummy; } ;


 int RTL8366RB_PMCR ;
 scalar_t__ RTL8366RB_PMCR_MIRROR_RX ;
 int rtl8366_smi_rmwr (struct rtl8366_smi*,int ,scalar_t__,scalar_t__) ;
 struct rtl8366_smi* sw_to_rtl8366_smi (struct switch_dev*) ;

__attribute__((used)) static int rtl8366rb_sw_set_mirror_rx_enable(struct switch_dev *dev,
        const struct switch_attr *attr,
        struct switch_val *val)
{
 struct rtl8366_smi *smi = sw_to_rtl8366_smi(dev);
 u32 data;

 if (val->value.i)
  data = RTL8366RB_PMCR_MIRROR_RX;
 else
  data = 0;

 return rtl8366_smi_rmwr(smi, RTL8366RB_PMCR, RTL8366RB_PMCR_MIRROR_RX, data);
}
