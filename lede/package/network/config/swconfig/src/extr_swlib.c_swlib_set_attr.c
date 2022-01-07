
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switch_val {struct switch_attr* attr; } ;
struct switch_dev {int dummy; } ;
struct switch_attr {int atype; } ;


 int EINVAL ;
 int SWITCH_CMD_SET_GLOBAL ;
 int SWITCH_CMD_SET_PORT ;
 int SWITCH_CMD_SET_VLAN ;



 int send_attr_val ;
 int swlib_call (int,int *,int ,struct switch_val*) ;

int
swlib_set_attr(struct switch_dev *dev, struct switch_attr *attr, struct switch_val *val)
{
 int cmd;

 switch(attr->atype) {
 case 130:
  cmd = SWITCH_CMD_SET_GLOBAL;
  break;
 case 129:
  cmd = SWITCH_CMD_SET_PORT;
  break;
 case 128:
  cmd = SWITCH_CMD_SET_VLAN;
  break;
 default:
  return -EINVAL;
 }

 val->attr = attr;
 return swlib_call(cmd, ((void*)0), send_attr_val, val);
}
