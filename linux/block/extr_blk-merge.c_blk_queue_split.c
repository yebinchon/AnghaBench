
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
struct bio {int dummy; } ;


 int __blk_queue_split (struct request_queue*,struct bio**,unsigned int*) ;

void blk_queue_split(struct request_queue *q, struct bio **bio)
{
 unsigned int nr_segs;

 __blk_queue_split(q, bio, &nr_segs);
}
