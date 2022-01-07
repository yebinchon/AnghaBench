
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;


 int __blk_get_queue (struct request_queue*) ;
 int blk_queue_dying (struct request_queue*) ;
 scalar_t__ likely (int) ;

bool blk_get_queue(struct request_queue *q)
{
 if (likely(!blk_queue_dying(q))) {
  __blk_get_queue(q);
  return 1;
 }

 return 0;
}
