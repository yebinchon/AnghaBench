
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct binder_transaction {struct binder_thread* from; struct binder_transaction* from_parent; } ;
struct binder_thread {struct binder_transaction* transaction_stack; TYPE_1__* proc; } ;
struct TYPE_2__ {int inner_lock; } ;


 int BUG_ON (int) ;
 int assert_spin_locked (int *) ;

__attribute__((used)) static void binder_pop_transaction_ilocked(struct binder_thread *target_thread,
        struct binder_transaction *t)
{
 BUG_ON(!target_thread);
 assert_spin_locked(&target_thread->proc->inner_lock);
 BUG_ON(target_thread->transaction_stack != t);
 BUG_ON(target_thread->transaction_stack->from != target_thread);
 target_thread->transaction_stack =
  target_thread->transaction_stack->from_parent;
 t->from = ((void*)0);
}
