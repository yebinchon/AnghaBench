
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kyber_ctx_queue {int * rq_list; int lock; } ;


 int INIT_LIST_HEAD (int *) ;
 unsigned int KYBER_NUM_DOMAINS ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void kyber_ctx_queue_init(struct kyber_ctx_queue *kcq)
{
 unsigned int i;

 spin_lock_init(&kcq->lock);
 for (i = 0; i < KYBER_NUM_DOMAINS; i++)
  INIT_LIST_HEAD(&kcq->rq_list[i]);
}
