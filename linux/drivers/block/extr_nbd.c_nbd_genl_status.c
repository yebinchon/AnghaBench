
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct nbd_device {int dummy; } ;
struct genl_info {scalar_t__* attrs; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int NBD_ATTR_DEVICE_LIST ;
 size_t NBD_ATTR_INDEX ;
 int NBD_CMD_STATUS ;
 int genlmsg_end (struct sk_buff*,void*) ;
 struct sk_buff* genlmsg_new (size_t,int ) ;
 void* genlmsg_put_reply (struct sk_buff*,struct genl_info*,int *,int ,int ) ;
 int genlmsg_reply (struct sk_buff*,struct genl_info*) ;
 struct nbd_device* idr_find (int *,int) ;
 int idr_for_each (int *,int *,struct sk_buff*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nbd_genl_family ;
 int nbd_index_idr ;
 int nbd_index_mutex ;
 int nbd_total_devices ;
 scalar_t__ nla_attr_size (int) ;
 int nla_get_u32 (scalar_t__) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,int ) ;
 size_t nla_total_size (scalar_t__) ;
 int nlmsg_free (struct sk_buff*) ;
 int populate_nbd_status (struct nbd_device*,struct sk_buff*) ;
 int status_cb ;

__attribute__((used)) static int nbd_genl_status(struct sk_buff *skb, struct genl_info *info)
{
 struct nlattr *dev_list;
 struct sk_buff *reply;
 void *reply_head;
 size_t msg_size;
 int index = -1;
 int ret = -ENOMEM;

 if (info->attrs[NBD_ATTR_INDEX])
  index = nla_get_u32(info->attrs[NBD_ATTR_INDEX]);

 mutex_lock(&nbd_index_mutex);

 msg_size = nla_total_size(nla_attr_size(sizeof(u32)) +
      nla_attr_size(sizeof(u8)));
 msg_size *= (index == -1) ? nbd_total_devices : 1;

 reply = genlmsg_new(msg_size, GFP_KERNEL);
 if (!reply)
  goto out;
 reply_head = genlmsg_put_reply(reply, info, &nbd_genl_family, 0,
           NBD_CMD_STATUS);
 if (!reply_head) {
  nlmsg_free(reply);
  goto out;
 }

 dev_list = nla_nest_start_noflag(reply, NBD_ATTR_DEVICE_LIST);
 if (index == -1) {
  ret = idr_for_each(&nbd_index_idr, &status_cb, reply);
  if (ret) {
   nlmsg_free(reply);
   goto out;
  }
 } else {
  struct nbd_device *nbd;
  nbd = idr_find(&nbd_index_idr, index);
  if (nbd) {
   ret = populate_nbd_status(nbd, reply);
   if (ret) {
    nlmsg_free(reply);
    goto out;
   }
  }
 }
 nla_nest_end(reply, dev_list);
 genlmsg_end(reply, reply_head);
 ret = genlmsg_reply(reply, info);
out:
 mutex_unlock(&nbd_index_mutex);
 return ret;
}
