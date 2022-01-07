
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int conn; } ;
struct drbd_device {int flags; TYPE_1__ state; } ;
struct drbd_connection {int agreed_pro_version; } ;
struct TYPE_4__ {struct drbd_connection* connection; } ;


 int RS_DONE ;
 int RS_PROGRESS ;
 int drbd_device_post_work (struct drbd_device*,int ) ;
 TYPE_2__* first_peer_device (struct drbd_device*) ;
 scalar_t__ is_sync_target_state (int ) ;
 int lazy_bitmap_update_due (struct drbd_device*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void maybe_schedule_on_disk_bitmap_update(struct drbd_device *device, bool rs_done)
{
 if (rs_done) {
  struct drbd_connection *connection = first_peer_device(device)->connection;
  if (connection->agreed_pro_version <= 95 ||
      is_sync_target_state(device->state.conn))
   set_bit(RS_DONE, &device->flags);






 } else if (!lazy_bitmap_update_due(device))
  return;

 drbd_device_post_work(device, RS_PROGRESS);
}
