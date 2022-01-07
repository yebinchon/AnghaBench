
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int discard_granularity; unsigned long max_hw_discard_sectors; unsigned long max_discard_sectors; } ;
struct request_queue {TYPE_1__ limits; } ;
typedef scalar_t__ ssize_t ;


 scalar_t__ EINVAL ;
 unsigned long UINT_MAX ;
 scalar_t__ queue_var_store (unsigned long*,char const*,size_t) ;

__attribute__((used)) static ssize_t queue_discard_max_store(struct request_queue *q,
           const char *page, size_t count)
{
 unsigned long max_discard;
 ssize_t ret = queue_var_store(&max_discard, page, count);

 if (ret < 0)
  return ret;

 if (max_discard & (q->limits.discard_granularity - 1))
  return -EINVAL;

 max_discard >>= 9;
 if (max_discard > UINT_MAX)
  return -EINVAL;

 if (max_discard > q->limits.max_hw_discard_sectors)
  max_discard = q->limits.max_hw_discard_sectors;

 q->limits.max_discard_sectors = max_discard;
 return ret;
}
