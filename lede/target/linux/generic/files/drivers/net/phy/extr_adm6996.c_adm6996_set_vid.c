
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ i; } ;
struct switch_val {size_t port_vlan; TYPE_1__ value; } ;
struct switch_dev {int dummy; } ;
struct switch_attr {int dummy; } ;
struct adm6996_priv {scalar_t__* vlan_id; } ;


 scalar_t__ ADM_VLAN_MAX_ID ;
 int EINVAL ;
 int pr_devel (char*,size_t,scalar_t__) ;
 struct adm6996_priv* to_adm (struct switch_dev*) ;

__attribute__((used)) static int
adm6996_set_vid(struct switch_dev *dev, const struct switch_attr *attr,
  struct switch_val *val)
{
 struct adm6996_priv *priv = to_adm(dev);

 pr_devel("set_vid port %d vid %d\n", val->port_vlan, val->value.i);

 if (val->value.i > ADM_VLAN_MAX_ID)
  return -EINVAL;

 priv->vlan_id[val->port_vlan] = val->value.i;

 return 0;
}
