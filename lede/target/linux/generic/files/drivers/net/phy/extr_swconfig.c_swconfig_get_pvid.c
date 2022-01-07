
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int i; } ;
struct switch_val {scalar_t__ port_vlan; TYPE_2__ value; } ;
struct switch_dev {scalar_t__ ports; TYPE_1__* ops; } ;
struct switch_attr {int dummy; } ;
struct TYPE_3__ {int (* get_port_pvid ) (struct switch_dev*,scalar_t__,int *) ;} ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int stub1 (struct switch_dev*,scalar_t__,int *) ;

__attribute__((used)) static int
swconfig_get_pvid(struct switch_dev *dev, const struct switch_attr *attr,
   struct switch_val *val)
{
 if (val->port_vlan >= dev->ports)
  return -EINVAL;

 if (!dev->ops->get_port_pvid)
  return -EOPNOTSUPP;

 return dev->ops->get_port_pvid(dev, val->port_vlan, &val->value.i);
}
