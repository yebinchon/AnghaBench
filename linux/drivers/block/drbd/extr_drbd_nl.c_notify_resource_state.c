
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct resource_statistics {int res_stat_write_ordering; } ;
struct resource_info {int dummy; } ;
struct drbd_resource {int write_ordering; } ;
struct drbd_genlmsghdr {unsigned int minor; int ret_code; } ;
typedef enum drbd_notification_type { ____Placeholder_drbd_notification_type } drbd_notification_type ;


 int CAP_SYS_ADMIN ;
 int DRBD_RESOURCE_STATE ;
 int EMSGSIZE ;
 int ENOMEM ;
 int ESRCH ;
 int GFP_NOIO ;
 int GFP_NOWAIT ;
 int NLMSG_GOODSIZE ;
 int NOTIFY_DESTROY ;
 int NOTIFY_FLAGS ;
 int NO_ERROR ;
 unsigned int atomic_inc_return (int *) ;
 int capable (int ) ;
 int drbd_err (struct drbd_resource*,char*,int,unsigned int) ;
 int drbd_genl_family ;
 int drbd_genl_multicast_events (struct sk_buff*,int ) ;
 int genlmsg_end (struct sk_buff*,struct drbd_genlmsghdr*) ;
 struct sk_buff* genlmsg_new (int ,int ) ;
 struct drbd_genlmsghdr* genlmsg_put (struct sk_buff*,int ,unsigned int,int *,int ,int ) ;
 scalar_t__ nla_put_drbd_cfg_context (struct sk_buff*,struct drbd_resource*,int *,int *) ;
 scalar_t__ nla_put_notification_header (struct sk_buff*,int) ;
 int nlmsg_free (struct sk_buff*) ;
 int notify_genl_seq ;
 scalar_t__ resource_info_to_skb (struct sk_buff*,struct resource_info*,int) ;
 int resource_statistics_to_skb (struct sk_buff*,struct resource_statistics*,int) ;

void notify_resource_state(struct sk_buff *skb,
      unsigned int seq,
      struct drbd_resource *resource,
      struct resource_info *resource_info,
      enum drbd_notification_type type)
{
 struct resource_statistics resource_statistics;
 struct drbd_genlmsghdr *dh;
 bool multicast = 0;
 int err;

 if (!skb) {
  seq = atomic_inc_return(&notify_genl_seq);
  skb = genlmsg_new(NLMSG_GOODSIZE, GFP_NOIO);
  err = -ENOMEM;
  if (!skb)
   goto failed;
  multicast = 1;
 }

 err = -EMSGSIZE;
 dh = genlmsg_put(skb, 0, seq, &drbd_genl_family, 0, DRBD_RESOURCE_STATE);
 if (!dh)
  goto nla_put_failure;
 dh->minor = -1U;
 dh->ret_code = NO_ERROR;
 if (nla_put_drbd_cfg_context(skb, resource, ((void*)0), ((void*)0)) ||
     nla_put_notification_header(skb, type) ||
     ((type & ~NOTIFY_FLAGS) != NOTIFY_DESTROY &&
      resource_info_to_skb(skb, resource_info, 1)))
  goto nla_put_failure;
 resource_statistics.res_stat_write_ordering = resource->write_ordering;
 err = resource_statistics_to_skb(skb, &resource_statistics, !capable(CAP_SYS_ADMIN));
 if (err)
  goto nla_put_failure;
 genlmsg_end(skb, dh);
 if (multicast) {
  err = drbd_genl_multicast_events(skb, GFP_NOWAIT);

  if (err && err != -ESRCH)
   goto failed;
 }
 return;

nla_put_failure:
 nlmsg_free(skb);
failed:
 drbd_err(resource, "Error %d while broadcasting event. Event seq:%u\n",
   err, seq);
}
