
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_flush_queue {struct blk_flush_queue* flush_rq; } ;


 int kfree (struct blk_flush_queue*) ;

void blk_free_flush_queue(struct blk_flush_queue *fq)
{

 if (!fq)
  return;

 kfree(fq->flush_rq);
 kfree(fq);
}
