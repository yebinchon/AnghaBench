
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
typedef int ssize_t ;


 unsigned long BLKDEV_MIN_RQ ;
 int EINVAL ;
 int blk_mq_update_nr_requests (struct request_queue*,unsigned long) ;
 int queue_is_mq (struct request_queue*) ;
 int queue_var_store (unsigned long*,char const*,size_t) ;

__attribute__((used)) static ssize_t
queue_requests_store(struct request_queue *q, const char *page, size_t count)
{
 unsigned long nr;
 int ret, err;

 if (!queue_is_mq(q))
  return -EINVAL;

 ret = queue_var_store(&nr, page, count);
 if (ret < 0)
  return ret;

 if (nr < BLKDEV_MIN_RQ)
  nr = BLKDEV_MIN_RQ;

 err = blk_mq_update_nr_requests(q, nr);
 if (err)
  return err;

 return ret;
}
