
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb_node {int dummy; } ;
struct bfq_service_tree {int idle; struct bfq_entity* last_idle; struct bfq_entity* first_idle; } ;
struct bfq_queue {int bfqq_list; } ;
struct bfq_entity {int rb_node; } ;


 void* bfq_entity_of (struct rb_node*) ;
 struct bfq_queue* bfq_entity_to_bfqq (struct bfq_entity*) ;
 int bfq_extract (int *,struct bfq_entity*) ;
 int list_del (int *) ;
 struct rb_node* rb_next (int *) ;
 struct rb_node* rb_prev (int *) ;

__attribute__((used)) static void bfq_idle_extract(struct bfq_service_tree *st,
        struct bfq_entity *entity)
{
 struct bfq_queue *bfqq = bfq_entity_to_bfqq(entity);
 struct rb_node *next;

 if (entity == st->first_idle) {
  next = rb_next(&entity->rb_node);
  st->first_idle = bfq_entity_of(next);
 }

 if (entity == st->last_idle) {
  next = rb_prev(&entity->rb_node);
  st->last_idle = bfq_entity_of(next);
 }

 bfq_extract(&st->idle, entity);

 if (bfqq)
  list_del(&bfqq->bfqq_list);
}
