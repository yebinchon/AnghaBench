
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int i; } ;
struct switch_val {size_t port_vlan; TYPE_1__ value; } ;
struct switch_dev {int dummy; } ;
struct switch_attr {int dummy; } ;
struct ar7240sw {int * vlan_id; } ;


 struct ar7240sw* sw_to_ar7240 (struct switch_dev*) ;

__attribute__((used)) static int
ar7240_get_vid(struct switch_dev *dev, const struct switch_attr *attr,
  struct switch_val *val)
{
 struct ar7240sw *as = sw_to_ar7240(dev);
 val->value.i = as->vlan_id[val->port_vlan];
 return 0;
}
