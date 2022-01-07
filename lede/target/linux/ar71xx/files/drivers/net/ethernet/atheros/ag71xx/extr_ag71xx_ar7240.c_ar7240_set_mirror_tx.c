
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int i; } ;
struct switch_val {int port_vlan; TYPE_1__ value; } ;
struct switch_dev {int ports; } ;
struct switch_attr {int dummy; } ;
struct mii_bus {int dummy; } ;
struct ar7240sw {struct mii_bus* mii_bus; } ;


 int AR7240_PORT_CTRL_MIRROR_TX ;
 int AR7240_REG_PORT_CTRL (int) ;
 int EINVAL ;
 int ar7240sw_reg_rmw (struct mii_bus*,int ,int ,int ) ;
 int ar7240sw_reg_set (struct mii_bus*,int ,int ) ;
 struct ar7240sw* sw_to_ar7240 (struct switch_dev*) ;

__attribute__((used)) static int
ar7240_set_mirror_tx(struct switch_dev *dev, const struct switch_attr *attr,
        struct switch_val *val)
{
 struct ar7240sw *as = sw_to_ar7240(dev);
 struct mii_bus *mii = as->mii_bus;

 int port = val->port_vlan;

 if (port >= dev->ports)
  return -EINVAL;

 if (val && val->value.i == 1)
  ar7240sw_reg_set(mii, AR7240_REG_PORT_CTRL(port),
   AR7240_PORT_CTRL_MIRROR_TX);
 else
  ar7240sw_reg_rmw(mii, AR7240_REG_PORT_CTRL(port),
   AR7240_PORT_CTRL_MIRROR_TX, 0);

 return 0;
}
