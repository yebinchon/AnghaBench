
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfq_queue {int ref; int bfqd; } ;
struct bfq_entity {int dummy; } ;


 struct bfq_queue* bfq_entity_to_bfqq (struct bfq_entity*) ;
 int bfq_log_bfqq (int ,struct bfq_queue*,char*,struct bfq_queue*,int ) ;

__attribute__((used)) static void bfq_get_entity(struct bfq_entity *entity)
{
 struct bfq_queue *bfqq = bfq_entity_to_bfqq(entity);

 if (bfqq) {
  bfqq->ref++;
  bfq_log_bfqq(bfqq->bfqd, bfqq, "get_entity: %p %d",
        bfqq, bfqq->ref);
 }
}
