
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int i; } ;
struct switch_val {int port_vlan; TYPE_1__ value; } ;
struct switch_dev {int dummy; } ;
struct switch_attr {int dummy; } ;



__attribute__((used)) static int mt753x_get_vid(struct switch_dev *dev,
     const struct switch_attr *attr,
     struct switch_val *val)
{
 val->value.i = val->port_vlan;
 return 0;
}
