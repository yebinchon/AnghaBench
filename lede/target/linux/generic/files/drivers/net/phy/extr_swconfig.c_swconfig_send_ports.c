
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * ports; } ;
struct switch_val {int len; TYPE_1__ value; } ;
struct swconfig_callback {int cmd; struct sk_buff* msg; int * nest; int (* close ) (struct swconfig_callback*,int *) ;int fill; struct genl_info* info; } ;
struct sk_buff {int dummy; } ;
struct genl_info {int dummy; } ;
typedef int cb ;


 int EINVAL ;
 int memset (struct swconfig_callback*,int ,int) ;
 int nla_nest_start (struct sk_buff*,int) ;
 int swconfig_close_portlist (struct swconfig_callback*,int *) ;
 int swconfig_send_multipart (struct swconfig_callback*,int *) ;
 int swconfig_send_port ;

__attribute__((used)) static int
swconfig_send_ports(struct sk_buff **msg, struct genl_info *info, int attr,
  const struct switch_val *val)
{
 struct swconfig_callback cb;
 int err = 0;
 int i;

 if (!val->value.ports)
  return -EINVAL;

 memset(&cb, 0, sizeof(cb));
 cb.cmd = attr;
 cb.msg = *msg;
 cb.info = info;
 cb.fill = swconfig_send_port;
 cb.close = swconfig_close_portlist;

 cb.nest[0] = nla_nest_start(cb.msg, cb.cmd);
 for (i = 0; i < val->len; i++) {
  err = swconfig_send_multipart(&cb, &val->value.ports[i]);
  if (err)
   goto done;
 }
 err = val->len;
 swconfig_close_portlist(&cb, ((void*)0));
 *msg = cb.msg;

done:
 return err;
}
