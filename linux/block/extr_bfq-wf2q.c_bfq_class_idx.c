
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfq_queue {unsigned int ioprio_class; } ;
struct bfq_entity {int dummy; } ;


 int BFQ_DEFAULT_GRP_CLASS ;
 struct bfq_queue* bfq_entity_to_bfqq (struct bfq_entity*) ;

__attribute__((used)) static unsigned int bfq_class_idx(struct bfq_entity *entity)
{
 struct bfq_queue *bfqq = bfq_entity_to_bfqq(entity);

 return bfqq ? bfqq->ioprio_class - 1 :
  BFQ_DEFAULT_GRP_CLASS - 1;
}
