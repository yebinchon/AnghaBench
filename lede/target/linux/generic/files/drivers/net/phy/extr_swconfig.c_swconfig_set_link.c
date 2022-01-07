
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int link; } ;
struct switch_val {TYPE_2__ value; int port_vlan; } ;
struct switch_dev {TYPE_1__* ops; } ;
struct switch_attr {int dummy; } ;
struct TYPE_3__ {int (* set_port_link ) (struct switch_dev*,int ,int ) ;} ;


 int EOPNOTSUPP ;
 int stub1 (struct switch_dev*,int ,int ) ;

__attribute__((used)) static int
swconfig_set_link(struct switch_dev *dev, const struct switch_attr *attr,
   struct switch_val *val)
{
 if (!dev->ops->set_port_link)
  return -EOPNOTSUPP;

 return dev->ops->set_port_link(dev, val->port_vlan, val->value.link);
}
