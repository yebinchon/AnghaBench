
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;


 int GFP_KERNEL ;
 int NBD_ATTR_INDEX ;
 int NBD_CMD_LINK_DEAD ;
 int genlmsg_end (struct sk_buff*,void*) ;
 int genlmsg_multicast (int *,struct sk_buff*,int ,int ,int ) ;
 struct sk_buff* genlmsg_new (int ,int ) ;
 void* genlmsg_put (struct sk_buff*,int ,int ,int *,int ,int ) ;
 int nbd_genl_family ;
 int nla_put_u32 (struct sk_buff*,int ,int) ;
 int nla_total_size (int) ;
 int nlmsg_free (struct sk_buff*) ;

__attribute__((used)) static void nbd_mcast_index(int index)
{
 struct sk_buff *skb;
 void *msg_head;
 int ret;

 skb = genlmsg_new(nla_total_size(sizeof(u32)), GFP_KERNEL);
 if (!skb)
  return;
 msg_head = genlmsg_put(skb, 0, 0, &nbd_genl_family, 0,
         NBD_CMD_LINK_DEAD);
 if (!msg_head) {
  nlmsg_free(skb);
  return;
 }
 ret = nla_put_u32(skb, NBD_ATTR_INDEX, index);
 if (ret) {
  nlmsg_free(skb);
  return;
 }
 genlmsg_end(skb, msg_head);
 genlmsg_multicast(&nbd_genl_family, skb, 0, 0, GFP_KERNEL);
}
