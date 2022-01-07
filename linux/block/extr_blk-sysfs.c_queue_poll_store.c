
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct request_queue {TYPE_2__* tag_set; } ;
typedef scalar_t__ ssize_t ;
struct TYPE_4__ {size_t nr_maps; TYPE_1__* map; } ;
struct TYPE_3__ {int nr_queues; } ;


 scalar_t__ EINVAL ;
 size_t HCTX_TYPE_POLL ;
 int QUEUE_FLAG_POLL ;
 int blk_queue_flag_clear (int ,struct request_queue*) ;
 int blk_queue_flag_set (int ,struct request_queue*) ;
 scalar_t__ queue_var_store (unsigned long*,char const*,size_t) ;

__attribute__((used)) static ssize_t queue_poll_store(struct request_queue *q, const char *page,
    size_t count)
{
 unsigned long poll_on;
 ssize_t ret;

 if (!q->tag_set || q->tag_set->nr_maps <= HCTX_TYPE_POLL ||
     !q->tag_set->map[HCTX_TYPE_POLL].nr_queues)
  return -EINVAL;

 ret = queue_var_store(&poll_on, page, count);
 if (ret < 0)
  return ret;

 if (poll_on)
  blk_queue_flag_set(QUEUE_FLAG_POLL, q);
 else
  blk_queue_flag_clear(QUEUE_FLAG_POLL, q);

 return ret;
}
