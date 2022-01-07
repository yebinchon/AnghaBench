
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int i; } ;
struct switch_val {int port_vlan; TYPE_1__ value; } ;
struct switch_dev {int cpu_port; } ;
struct switch_attr {int dummy; } ;
struct rtl_priv {scalar_t__ do_cpu; } ;
struct rtl_phyregs {int dummy; } ;


 int NULL_VID_REPLACE ;
 int RTL8306_NUM_PORTS ;
 int RTL_PORT_REG (int,int ) ;
 int RTL_REG_EN_TAG_CLR ;
 int RTL_REG_EN_TAG_IN ;
 int RTL_REG_EN_TAG_OUT ;
 int RTL_REG_VLAN_ENABLE ;
 int RTL_REG_VLAN_FILTER ;
 int RTL_REG_VLAN_TAG_AWARE ;
 int TAG_INSERT ;
 int VID_INSERT ;
 int rtl_phy_restore (struct switch_dev*,int ,struct rtl_phyregs*) ;
 int rtl_phy_save (struct switch_dev*,int ,struct rtl_phyregs*) ;
 int rtl_set (struct switch_dev*,int ,int) ;
 struct rtl_priv* to_rtl (struct switch_dev*) ;

__attribute__((used)) static int
rtl_set_vlan(struct switch_dev *dev, const struct switch_attr *attr, struct switch_val *val)
{
 struct rtl_priv *priv = to_rtl(dev);
 struct rtl_phyregs port;
 int en = val->value.i;
 int i;

 rtl_set(dev, RTL_REG_EN_TAG_OUT, en && priv->do_cpu);
 rtl_set(dev, RTL_REG_EN_TAG_IN, en && priv->do_cpu);
 rtl_set(dev, RTL_REG_EN_TAG_CLR, en && priv->do_cpu);
 rtl_set(dev, RTL_REG_VLAN_TAG_AWARE, en);
 if (en)
  rtl_set(dev, RTL_REG_VLAN_FILTER, en);

 for (i = 0; i < RTL8306_NUM_PORTS; i++) {
  if (i > 3)
   rtl_phy_save(dev, val->port_vlan, &port);
  rtl_set(dev, RTL_PORT_REG(i, NULL_VID_REPLACE), 1);
  rtl_set(dev, RTL_PORT_REG(i, VID_INSERT), (en ? (i == dev->cpu_port ? 0 : 1) : 1));
  rtl_set(dev, RTL_PORT_REG(i, TAG_INSERT), (en ? (i == dev->cpu_port ? 2 : 1) : 3));
  if (i > 3)
   rtl_phy_restore(dev, val->port_vlan, &port);
 }
 rtl_set(dev, RTL_REG_VLAN_ENABLE, en);

 return 0;
}
