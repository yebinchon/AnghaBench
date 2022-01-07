
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drbd_request {int rq_state; scalar_t__ epoch; scalar_t__ pre_send_jif; struct drbd_device* device; } ;
struct drbd_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ current_epoch_nr; int last_sent_barrier_jif; } ;
struct drbd_connection {TYPE_1__ send; scalar_t__ last_reconnect_jif; } ;


 int RQ_NET_PENDING ;
 int drbd_warn (struct drbd_device*,char*,int ,unsigned long,unsigned int,...) ;
 int jiffies_to_msecs (scalar_t__) ;
 scalar_t__ time_after (unsigned long,scalar_t__) ;
 scalar_t__ time_in_range (unsigned long,scalar_t__,scalar_t__) ;

__attribute__((used)) static bool net_timeout_reached(struct drbd_request *net_req,
  struct drbd_connection *connection,
  unsigned long now, unsigned long ent,
  unsigned int ko_count, unsigned int timeout)
{
 struct drbd_device *device = net_req->device;

 if (!time_after(now, net_req->pre_send_jif + ent))
  return 0;

 if (time_in_range(now, connection->last_reconnect_jif, connection->last_reconnect_jif + ent))
  return 0;

 if (net_req->rq_state & RQ_NET_PENDING) {
  drbd_warn(device, "Remote failed to finish a request within %ums > ko-count (%u) * timeout (%u * 0.1s)\n",
   jiffies_to_msecs(now - net_req->pre_send_jif), ko_count, timeout);
  return 1;
 }





 if (net_req->epoch == connection->send.current_epoch_nr) {
  drbd_warn(device,
   "We did not send a P_BARRIER for %ums > ko-count (%u) * timeout (%u * 0.1s); drbd kernel thread blocked?\n",
   jiffies_to_msecs(now - net_req->pre_send_jif), ko_count, timeout);
  return 0;
 }
 if (time_after(now, connection->send.last_sent_barrier_jif + ent)) {
  drbd_warn(device, "Remote failed to answer a P_BARRIER (sent at %lu jif; now=%lu jif) within %ums > ko-count (%u) * timeout (%u * 0.1s)\n",
   connection->send.last_sent_barrier_jif, now,
   jiffies_to_msecs(now - connection->send.last_sent_barrier_jif), ko_count, timeout);
  return 1;
 }
 return 0;
}
