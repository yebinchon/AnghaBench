
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {struct elevator_queue* elevator; } ;
struct request {int rq_flags; int hash; } ;
struct elevator_queue {int hash; } ;


 int BUG_ON (int ) ;
 int ELV_ON_HASH (struct request*) ;
 int RQF_HASHED ;
 int hash_add (int ,int *,int ) ;
 int rq_hash_key (struct request*) ;

void elv_rqhash_add(struct request_queue *q, struct request *rq)
{
 struct elevator_queue *e = q->elevator;

 BUG_ON(ELV_ON_HASH(rq));
 hash_add(e->hash, &rq->hash, rq_hash_key(rq));
 rq->rq_flags |= RQF_HASHED;
}
