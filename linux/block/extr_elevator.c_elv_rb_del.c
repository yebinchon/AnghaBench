
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int rb_node; } ;
struct rb_root {int dummy; } ;


 int BUG_ON (int ) ;
 int RB_CLEAR_NODE (int *) ;
 int RB_EMPTY_NODE (int *) ;
 int rb_erase (int *,struct rb_root*) ;

void elv_rb_del(struct rb_root *root, struct request *rq)
{
 BUG_ON(RB_EMPTY_NODE(&rq->rb_node));
 rb_erase(&rq->rb_node, root);
 RB_CLEAR_NODE(&rq->rb_node);
}
