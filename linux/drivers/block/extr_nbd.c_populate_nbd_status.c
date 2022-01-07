
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct nbd_device {int index; int config_refs; } ;


 int EMSGSIZE ;
 int NBD_DEVICE_CONNECTED ;
 int NBD_DEVICE_INDEX ;
 int NBD_DEVICE_ITEM ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,int ) ;
 int nla_put_u32 (struct sk_buff*,int ,int ) ;
 int nla_put_u8 (struct sk_buff*,int ,int) ;
 scalar_t__ refcount_read (int *) ;

__attribute__((used)) static int populate_nbd_status(struct nbd_device *nbd, struct sk_buff *reply)
{
 struct nlattr *dev_opt;
 u8 connected = 0;
 int ret;
 if (refcount_read(&nbd->config_refs))
  connected = 1;
 dev_opt = nla_nest_start_noflag(reply, NBD_DEVICE_ITEM);
 if (!dev_opt)
  return -EMSGSIZE;
 ret = nla_put_u32(reply, NBD_DEVICE_INDEX, nbd->index);
 if (ret)
  return -EMSGSIZE;
 ret = nla_put_u8(reply, NBD_DEVICE_CONNECTED,
    connected);
 if (ret)
  return -EMSGSIZE;
 nla_nest_end(reply, dev_opt);
 return 0;
}
