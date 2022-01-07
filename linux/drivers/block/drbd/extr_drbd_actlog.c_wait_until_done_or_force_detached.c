
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drbd_device {int flags; int misc_wait; } ;
struct drbd_backing_dev {int disk_conf; } ;
struct TYPE_2__ {long disk_timeout; } ;


 int DRBD_FORCE_DETACH ;
 int FORCE_DETACH ;
 long HZ ;
 long MAX_SCHEDULE_TIMEOUT ;
 int drbd_chk_io_error (struct drbd_device*,int,int ) ;
 int drbd_err (struct drbd_device*,char*) ;
 TYPE_1__* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ test_bit (int ,int *) ;
 long wait_event_timeout (int ,int,long) ;

void wait_until_done_or_force_detached(struct drbd_device *device, struct drbd_backing_dev *bdev,
         unsigned int *done)
{
 long dt;

 rcu_read_lock();
 dt = rcu_dereference(bdev->disk_conf)->disk_timeout;
 rcu_read_unlock();
 dt = dt * HZ / 10;
 if (dt == 0)
  dt = MAX_SCHEDULE_TIMEOUT;

 dt = wait_event_timeout(device->misc_wait,
   *done || test_bit(FORCE_DETACH, &device->flags), dt);
 if (dt == 0) {
  drbd_err(device, "meta-data IO operation timed out\n");
  drbd_chk_io_error(device, 1, DRBD_FORCE_DETACH);
 }
}
