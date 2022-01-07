
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int rq_flags; int hash; } ;


 int RQF_HASHED ;
 int hash_del (int *) ;

__attribute__((used)) static inline void __elv_rqhash_del(struct request *rq)
{
 hash_del(&rq->hash);
 rq->rq_flags &= ~RQF_HASHED;
}
