
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drbd_work_queue {int q_wait; } ;
struct drbd_device {int flags; } ;
struct drbd_connection {int flags; struct drbd_work_queue sender_work; } ;
struct TYPE_2__ {struct drbd_connection* connection; } ;


 int DEVICE_WORK_PENDING ;
 TYPE_1__* first_peer_device (struct drbd_device*) ;
 int test_and_set_bit (int,int *) ;
 int wake_up (int *) ;

__attribute__((used)) static inline void
drbd_device_post_work(struct drbd_device *device, int work_bit)
{
 if (!test_and_set_bit(work_bit, &device->flags)) {
  struct drbd_connection *connection =
   first_peer_device(device)->connection;
  struct drbd_work_queue *q = &connection->sender_work;
  if (!test_and_set_bit(DEVICE_WORK_PENDING, &connection->flags))
   wake_up(&q->q_wait);
 }
}
