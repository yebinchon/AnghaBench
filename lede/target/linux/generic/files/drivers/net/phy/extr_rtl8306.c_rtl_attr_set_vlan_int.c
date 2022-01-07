
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switch_val {scalar_t__ port_vlan; } ;
struct switch_dev {scalar_t__ vlans; } ;
struct switch_attr {int dummy; } ;


 int EINVAL ;
 int rtl_attr_set_int (struct switch_dev*,struct switch_attr const*,struct switch_val*) ;

__attribute__((used)) static int
rtl_attr_set_vlan_int(struct switch_dev *dev, const struct switch_attr *attr, struct switch_val *val)
{
 if (val->port_vlan >= dev->vlans)
  return -EINVAL;

 return rtl_attr_set_int(dev, attr, val);
}
