
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int id; int queue_lock; } ;
struct io_cq {struct request_queue* q; } ;
struct io_context {int icq_hint; int icq_tree; } ;


 int lockdep_assert_held (int *) ;
 struct io_cq* radix_tree_lookup (int *,int ) ;
 int rcu_assign_pointer (int ,struct io_cq*) ;
 struct io_cq* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

struct io_cq *ioc_lookup_icq(struct io_context *ioc, struct request_queue *q)
{
 struct io_cq *icq;

 lockdep_assert_held(&q->queue_lock);







 rcu_read_lock();
 icq = rcu_dereference(ioc->icq_hint);
 if (icq && icq->q == q)
  goto out;

 icq = radix_tree_lookup(&ioc->icq_tree, q->id);
 if (icq && icq->q == q)
  rcu_assign_pointer(ioc->icq_hint, icq);
 else
  icq = ((void*)0);
out:
 rcu_read_unlock();
 return icq;
}
