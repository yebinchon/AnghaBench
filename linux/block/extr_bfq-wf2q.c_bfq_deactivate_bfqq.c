
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfq_entity {int dummy; } ;
struct bfq_queue {struct bfq_entity entity; } ;
struct bfq_data {int dummy; } ;


 int bfq_deactivate_entity (struct bfq_entity*,int,int) ;

void bfq_deactivate_bfqq(struct bfq_data *bfqd, struct bfq_queue *bfqq,
    bool ins_into_idle_tree, bool expiration)
{
 struct bfq_entity *entity = &bfqq->entity;

 bfq_deactivate_entity(entity, ins_into_idle_tree, expiration);
}
