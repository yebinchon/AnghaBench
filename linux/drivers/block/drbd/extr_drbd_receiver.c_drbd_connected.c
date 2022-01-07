
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drbd_peer_device {TYPE_1__* connection; struct drbd_device* device; } ;
struct drbd_device {int request_timer; int ap_in_flight; int flags; int own_state_mutex; int * state_mutex; scalar_t__ peer_seq; int packet_seq; } ;
struct TYPE_2__ {int agreed_pro_version; int cstate_mutex; } ;


 scalar_t__ HZ ;
 int RESIZE_PENDING ;
 int USE_DEGR_WFC_T ;
 int atomic_set (int *,int ) ;
 int clear_bit (int ,int *) ;
 int drbd_send_current_state (struct drbd_peer_device*) ;
 int drbd_send_sizes (struct drbd_peer_device*,int ,int ) ;
 int drbd_send_sync_param (struct drbd_peer_device*) ;
 int drbd_send_uuids (struct drbd_peer_device*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;

int drbd_connected(struct drbd_peer_device *peer_device)
{
 struct drbd_device *device = peer_device->device;
 int err;

 atomic_set(&device->packet_seq, 0);
 device->peer_seq = 0;

 device->state_mutex = peer_device->connection->agreed_pro_version < 100 ?
  &peer_device->connection->cstate_mutex :
  &device->own_state_mutex;

 err = drbd_send_sync_param(peer_device);
 if (!err)
  err = drbd_send_sizes(peer_device, 0, 0);
 if (!err)
  err = drbd_send_uuids(peer_device);
 if (!err)
  err = drbd_send_current_state(peer_device);
 clear_bit(USE_DEGR_WFC_T, &device->flags);
 clear_bit(RESIZE_PENDING, &device->flags);
 atomic_set(&device->ap_in_flight, 0);
 mod_timer(&device->request_timer, jiffies + HZ);
 return err;
}
