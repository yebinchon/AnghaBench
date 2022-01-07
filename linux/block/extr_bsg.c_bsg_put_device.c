
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
struct bsg_device {int dev_list; int ref_count; struct request_queue* queue; } ;


 int blk_put_queue (struct request_queue*) ;
 int bsg_dbg (struct bsg_device*,char*) ;
 int bsg_mutex ;
 int hlist_del (int *) ;
 int kfree (struct bsg_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int refcount_dec_and_test (int *) ;

__attribute__((used)) static int bsg_put_device(struct bsg_device *bd)
{
 struct request_queue *q = bd->queue;

 mutex_lock(&bsg_mutex);

 if (!refcount_dec_and_test(&bd->ref_count)) {
  mutex_unlock(&bsg_mutex);
  return 0;
 }

 hlist_del(&bd->dev_list);
 mutex_unlock(&bsg_mutex);

 bsg_dbg(bd, "tearing down\n");




 kfree(bd);
 blk_put_queue(q);
 return 0;
}
