
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {int dummy; } ;
struct drbd_device {TYPE_1__* ldev; } ;
struct disk_conf {int discard_zeroes_if_aligned; } ;
struct TYPE_2__ {int disk_conf; int backing_bdev; } ;


 struct request_queue* bdev_get_queue (int ) ;
 int blk_queue_discard (struct request_queue*) ;
 struct disk_conf* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static bool can_do_reliable_discards(struct drbd_device *device)
{
 struct request_queue *q = bdev_get_queue(device->ldev->backing_bdev);
 struct disk_conf *dc;
 bool can_do;

 if (!blk_queue_discard(q))
  return 0;

 rcu_read_lock();
 dc = rcu_dereference(device->ldev->disk_conf);
 can_do = dc->discard_zeroes_if_aligned;
 rcu_read_unlock();
 return can_do;
}
