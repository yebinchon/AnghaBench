
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct throtl_service_queue {int nr_pending; int pending_tree; } ;
struct rb_node {int dummy; } ;


 int RB_CLEAR_NODE (struct rb_node*) ;
 int rb_erase_cached (struct rb_node*,int *) ;

__attribute__((used)) static void throtl_rb_erase(struct rb_node *n,
       struct throtl_service_queue *parent_sq)
{
 rb_erase_cached(n, &parent_sq->pending_tree);
 RB_CLEAR_NODE(n);
 --parent_sq->nr_pending;
}
