
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfq_queue {struct bfq_queue* new_bfqq; } ;


 int bfq_put_queue (struct bfq_queue*) ;

__attribute__((used)) static void bfq_put_cooperator(struct bfq_queue *bfqq)
{
 struct bfq_queue *__bfqq, *next;






 __bfqq = bfqq->new_bfqq;
 while (__bfqq) {
  if (__bfqq == bfqq)
   break;
  next = __bfqq->new_bfqq;
  bfq_put_queue(__bfqq);
  __bfqq = next;
 }
}
