
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct drbd_device {int al_wait; TYPE_3__* act_log; int al_lock; TYPE_1__* ldev; } ;
struct TYPE_8__ {scalar_t__ pending_changes; } ;
struct TYPE_7__ {int al_updates; } ;
struct TYPE_6__ {int disk_conf; } ;


 int al_write_transaction (struct drbd_device*) ;
 int lc_committed (TYPE_3__*) ;
 int lc_try_lock_for_transaction (TYPE_3__*) ;
 int lc_unlock (TYPE_3__*) ;
 TYPE_2__* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int wait_event (int ,int) ;
 int wake_up (int *) ;

void drbd_al_begin_io_commit(struct drbd_device *device)
{
 bool locked = 0;




 wait_event(device->al_wait,
   device->act_log->pending_changes == 0 ||
   (locked = lc_try_lock_for_transaction(device->act_log)));

 if (locked) {


  if (device->act_log->pending_changes) {
   bool write_al_updates;

   rcu_read_lock();
   write_al_updates = rcu_dereference(device->ldev->disk_conf)->al_updates;
   rcu_read_unlock();

   if (write_al_updates)
    al_write_transaction(device);
   spin_lock_irq(&device->al_lock);




   lc_committed(device->act_log);
   spin_unlock_irq(&device->al_lock);
  }
  lc_unlock(device->act_log);
  wake_up(&device->al_wait);
 }
}
