
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct binder_transaction {int lock; struct binder_thread* from; } ;
struct binder_thread {int tmp_ref; } ;


 int atomic_inc (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static struct binder_thread *binder_get_txn_from(
  struct binder_transaction *t)
{
 struct binder_thread *from;

 spin_lock(&t->lock);
 from = t->from;
 if (from)
  atomic_inc(&from->tmp_ref);
 spin_unlock(&t->lock);
 return from;
}
