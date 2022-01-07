
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct sib_info {int sib_reason; } ;
struct drbd_genlmsghdr {int ret_code; int minor; } ;
struct drbd_device {int dummy; } ;


 int DRBD_EVENT ;
 int EMSGSIZE ;
 int ENOMEM ;
 int ESRCH ;
 int GFP_NOIO ;
 int GFP_NOWAIT ;
 int NLMSG_GOODSIZE ;
 int NO_ERROR ;
 unsigned int atomic_inc_return (int *) ;
 int device_to_minor (struct drbd_device*) ;
 int drbd_err (struct drbd_device*,char*,int,unsigned int,int ) ;
 int drbd_genl_family ;
 int drbd_genl_multicast_events (struct sk_buff*,int ) ;
 int drbd_genl_seq ;
 int genlmsg_end (struct sk_buff*,struct drbd_genlmsghdr*) ;
 struct sk_buff* genlmsg_new (int ,int ) ;
 struct drbd_genlmsghdr* genlmsg_put (struct sk_buff*,int ,unsigned int,int *,int ,int ) ;
 scalar_t__ nla_put_status_info (struct sk_buff*,struct drbd_device*,struct sib_info const*) ;
 int nlmsg_free (struct sk_buff*) ;

void drbd_bcast_event(struct drbd_device *device, const struct sib_info *sib)
{
 struct sk_buff *msg;
 struct drbd_genlmsghdr *d_out;
 unsigned seq;
 int err = -ENOMEM;

 seq = atomic_inc_return(&drbd_genl_seq);
 msg = genlmsg_new(NLMSG_GOODSIZE, GFP_NOIO);
 if (!msg)
  goto failed;

 err = -EMSGSIZE;
 d_out = genlmsg_put(msg, 0, seq, &drbd_genl_family, 0, DRBD_EVENT);
 if (!d_out)
  goto nla_put_failure;
 d_out->minor = device_to_minor(device);
 d_out->ret_code = NO_ERROR;

 if (nla_put_status_info(msg, device, sib))
  goto nla_put_failure;
 genlmsg_end(msg, d_out);
 err = drbd_genl_multicast_events(msg, GFP_NOWAIT);

 if (err && err != -ESRCH)
  goto failed;

 return;

nla_put_failure:
 nlmsg_free(msg);
failed:
 drbd_err(device, "Error %d while broadcasting event. "
   "Event seq:%u sib_reason:%u\n",
   err, seq, sib->sib_reason);
}
