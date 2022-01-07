
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct genl_info {int dummy; } ;


 int genlmsg_data (int ) ;
 int genlmsg_end (struct sk_buff*,int ) ;
 scalar_t__ genlmsg_reply (struct sk_buff*,struct genl_info*) ;
 int nlmsg_data (int ) ;
 int nlmsg_hdr (struct sk_buff*) ;
 int pr_err (char*) ;

__attribute__((used)) static void drbd_adm_send_reply(struct sk_buff *skb, struct genl_info *info)
{
 genlmsg_end(skb, genlmsg_data(nlmsg_data(nlmsg_hdr(skb))));
 if (genlmsg_reply(skb, info))
  pr_err("error sending genl reply\n");
}
