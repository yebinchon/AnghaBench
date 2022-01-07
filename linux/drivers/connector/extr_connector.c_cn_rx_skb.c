
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ len; } ;
struct nlmsghdr {scalar_t__ nlmsg_len; } ;
struct cn_msg {int dummy; } ;


 int CONNECTOR_MAX_MSG_SIZE ;
 scalar_t__ NLMSG_HDRLEN ;
 int cn_call_callback (int ) ;
 int kfree_skb (struct sk_buff*) ;
 struct nlmsghdr* nlmsg_hdr (struct sk_buff*) ;
 int nlmsg_len (struct nlmsghdr*) ;
 int skb_get (struct sk_buff*) ;

__attribute__((used)) static void cn_rx_skb(struct sk_buff *skb)
{
 struct nlmsghdr *nlh;
 int len, err;

 if (skb->len >= NLMSG_HDRLEN) {
  nlh = nlmsg_hdr(skb);
  len = nlmsg_len(nlh);

  if (len < (int)sizeof(struct cn_msg) ||
      skb->len < nlh->nlmsg_len ||
      len > CONNECTOR_MAX_MSG_SIZE)
   return;

  err = cn_call_callback(skb_get(skb));
  if (err < 0)
   kfree_skb(skb);
 }
}
