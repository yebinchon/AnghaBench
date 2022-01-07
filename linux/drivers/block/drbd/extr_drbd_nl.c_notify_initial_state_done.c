
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct drbd_genlmsghdr {unsigned int minor; int ret_code; } ;


 int DRBD_INITIAL_STATE_DONE ;
 int EMSGSIZE ;
 int NOTIFY_EXISTS ;
 int NO_ERROR ;
 int drbd_genl_family ;
 int genlmsg_end (struct sk_buff*,struct drbd_genlmsghdr*) ;
 struct drbd_genlmsghdr* genlmsg_put (struct sk_buff*,int ,unsigned int,int *,int ,int ) ;
 scalar_t__ nla_put_notification_header (struct sk_buff*,int ) ;
 int nlmsg_free (struct sk_buff*) ;
 int pr_err (char*,int,unsigned int) ;

__attribute__((used)) static void notify_initial_state_done(struct sk_buff *skb, unsigned int seq)
{
 struct drbd_genlmsghdr *dh;
 int err;

 err = -EMSGSIZE;
 dh = genlmsg_put(skb, 0, seq, &drbd_genl_family, 0, DRBD_INITIAL_STATE_DONE);
 if (!dh)
  goto nla_put_failure;
 dh->minor = -1U;
 dh->ret_code = NO_ERROR;
 if (nla_put_notification_header(skb, NOTIFY_EXISTS))
  goto nla_put_failure;
 genlmsg_end(skb, dh);
 return;

nla_put_failure:
 nlmsg_free(skb);
 pr_err("Error %d sending event. Event seq:%u\n", err, seq);
}
