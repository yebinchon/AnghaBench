
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;
struct request_queue {int dummy; } ;


 scalar_t__ blk_queue_nonrot (struct request_queue*) ;

u64 wbt_default_latency_nsec(struct request_queue *q)
{




 if (blk_queue_nonrot(q))
  return 2000000ULL;
 else
  return 75000000ULL;
}
