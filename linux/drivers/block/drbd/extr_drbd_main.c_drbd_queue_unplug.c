
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ pdsk; scalar_t__ conn; scalar_t__ role; } ;
struct drbd_device {int unplug_work; int flags; TYPE_1__ state; } ;
struct TYPE_6__ {TYPE_2__* connection; } ;
struct TYPE_5__ {int sender_work; } ;


 scalar_t__ C_CONNECTED ;
 int D_ASSERT (struct drbd_device*,int) ;
 scalar_t__ D_INCONSISTENT ;
 scalar_t__ R_PRIMARY ;
 int UNPLUG_REMOTE ;
 int drbd_queue_work_if_unqueued (int *,int *) ;
 TYPE_3__* first_peer_device (struct drbd_device*) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

void drbd_queue_unplug(struct drbd_device *device)
{
 if (device->state.pdsk >= D_INCONSISTENT && device->state.conn >= C_CONNECTED) {
  D_ASSERT(device, device->state.role == R_PRIMARY);
  if (test_and_clear_bit(UNPLUG_REMOTE, &device->flags)) {
   drbd_queue_work_if_unqueued(
    &first_peer_device(device)->connection->sender_work,
    &device->unplug_work);
  }
 }
}
