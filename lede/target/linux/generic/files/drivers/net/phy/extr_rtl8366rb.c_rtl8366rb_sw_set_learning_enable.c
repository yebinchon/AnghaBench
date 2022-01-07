
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int i; } ;
struct switch_val {TYPE_1__ value; } ;
struct switch_dev {int dummy; } ;
struct switch_attr {int dummy; } ;
struct rtl8366_smi {int dummy; } ;


 int REG_WR (struct rtl8366_smi*,int ,int ) ;
 int RTL8366RB_PORT_ALL ;
 int RTL8366RB_SSCR0 ;
 int RTL8366RB_SSCR1 ;
 struct rtl8366_smi* sw_to_rtl8366_smi (struct switch_dev*) ;

__attribute__((used)) static int rtl8366rb_sw_set_learning_enable(struct switch_dev *dev,
           const struct switch_attr *attr,
           struct switch_val *val)
{
 struct rtl8366_smi *smi = sw_to_rtl8366_smi(dev);
 u32 portmask = 0;
 int err = 0;

 if (!val->value.i)
  portmask = RTL8366RB_PORT_ALL;


 REG_WR(smi, RTL8366RB_SSCR0, portmask);


 REG_WR(smi, RTL8366RB_SSCR1, portmask);

 return 0;
}
