
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct peer_device_info {int peer_resync_susp_dependency; int peer_resync_susp_peer; int peer_resync_susp_user; int peer_disk_state; int peer_repl_state; } ;
struct drbd_peer_device_state_change {int * resync_susp_dependency; int * resync_susp_peer; int * resync_susp_user; int * disk_state; int * repl_state; struct drbd_peer_device* peer_device; } ;
struct drbd_peer_device {int dummy; } ;
typedef enum drbd_notification_type { ____Placeholder_drbd_notification_type } drbd_notification_type ;


 size_t NEW ;
 int notify_peer_device_state (struct sk_buff*,unsigned int,struct drbd_peer_device*,struct peer_device_info*,int) ;

void notify_peer_device_state_change(struct sk_buff *skb,
         unsigned int seq,
         struct drbd_peer_device_state_change *p,
         enum drbd_notification_type type)
{
 struct drbd_peer_device *peer_device = p->peer_device;
 struct peer_device_info peer_device_info = {
  .peer_repl_state = p->repl_state[NEW],
  .peer_disk_state = p->disk_state[NEW],
  .peer_resync_susp_user = p->resync_susp_user[NEW],
  .peer_resync_susp_peer = p->resync_susp_peer[NEW],
  .peer_resync_susp_dependency = p->resync_susp_dependency[NEW],
 };

 notify_peer_device_state(skb, seq, peer_device, &peer_device_info, type);
}
