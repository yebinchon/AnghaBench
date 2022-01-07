
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {int id; TYPE_1__* elevator; } ;
struct io_cq {int __rcu_head; int __rcu_icq_cache; int q_node; int ioc_node; struct request_queue* q; struct io_context* ioc; } ;
struct io_context {int icq_hint; int icq_tree; int lock; } ;
struct elevator_type {int icq_cache; } ;
struct TYPE_2__ {struct elevator_type* type; } ;


 int call_rcu (int *,int ) ;
 int hlist_del_init (int *) ;
 int icq_free_icq_rcu ;
 int ioc_exit_icq (struct io_cq*) ;
 int list_del_init (int *) ;
 int lockdep_assert_held (int *) ;
 int radix_tree_delete (int *,int ) ;
 struct io_cq* rcu_access_pointer (int ) ;
 int rcu_assign_pointer (int ,int *) ;

__attribute__((used)) static void ioc_destroy_icq(struct io_cq *icq)
{
 struct io_context *ioc = icq->ioc;
 struct request_queue *q = icq->q;
 struct elevator_type *et = q->elevator->type;

 lockdep_assert_held(&ioc->lock);

 radix_tree_delete(&ioc->icq_tree, icq->q->id);
 hlist_del_init(&icq->ioc_node);
 list_del_init(&icq->q_node);






 if (rcu_access_pointer(ioc->icq_hint) == icq)
  rcu_assign_pointer(ioc->icq_hint, ((void*)0));

 ioc_exit_icq(icq);





 icq->__rcu_icq_cache = et->icq_cache;
 call_rcu(&icq->__rcu_head, icq_free_icq_rcu);
}
