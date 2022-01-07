
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {int poll_nsec; TYPE_1__* mq_ops; } ;
typedef int ssize_t ;
struct TYPE_2__ {int poll; } ;


 int BLK_MQ_POLL_CLASSIC ;
 int EINVAL ;
 int kstrtoint (char const*,int,int*) ;

__attribute__((used)) static ssize_t queue_poll_delay_store(struct request_queue *q, const char *page,
    size_t count)
{
 int err, val;

 if (!q->mq_ops || !q->mq_ops->poll)
  return -EINVAL;

 err = kstrtoint(page, 10, &val);
 if (err < 0)
  return err;

 if (val == BLK_MQ_POLL_CLASSIC)
  q->poll_nsec = BLK_MQ_POLL_CLASSIC;
 else if (val >= 0)
  q->poll_nsec = val * 1000;
 else
  return -EINVAL;

 return count;
}
