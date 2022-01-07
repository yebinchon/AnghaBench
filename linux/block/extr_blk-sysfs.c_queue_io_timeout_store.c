
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int blk_queue_rq_timeout (struct request_queue*,int ) ;
 int kstrtou32 (char const*,int,unsigned int*) ;
 int msecs_to_jiffies (unsigned int) ;

__attribute__((used)) static ssize_t queue_io_timeout_store(struct request_queue *q, const char *page,
      size_t count)
{
 unsigned int val;
 int err;

 err = kstrtou32(page, 10, &val);
 if (err || val == 0)
  return -EINVAL;

 blk_queue_rq_timeout(q, msecs_to_jiffies(val));

 return count;
}
