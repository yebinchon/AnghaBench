
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct throtl_service_queue {int pending_tree; int nr_pending; } ;
struct throtl_grp {int dummy; } ;
struct rb_node {int dummy; } ;


 int WARN_ON_ONCE (int) ;
 struct throtl_grp* rb_entry_tg (struct rb_node*) ;
 struct rb_node* rb_first_cached (int *) ;

__attribute__((used)) static struct throtl_grp *
throtl_rb_first(struct throtl_service_queue *parent_sq)
{
 struct rb_node *n;

 if (!parent_sq->nr_pending)
  return ((void*)0);

 n = rb_first_cached(&parent_sq->pending_tree);
 WARN_ON_ONCE(!n);
 if (!n)
  return ((void*)0);
 return rb_entry_tg(n);
}
