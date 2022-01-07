
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct binder_transaction {int lock; struct binder_transaction* from_parent; struct binder_thread* from; struct binder_transaction* to_parent; TYPE_1__* buffer; struct binder_thread* to_thread; int * to_proc; int debug_id; } ;
struct binder_thread {int is_dead; int looper; int todo; int proc; int wait; int pid; struct binder_transaction* transaction_stack; int rb_node; int tmp_ref; } ;
struct binder_proc {int pid; int threads; int tmp_ref; } ;
struct TYPE_2__ {int * transaction; } ;


 int BINDER_DEBUG_DEAD_TRANSACTION ;
 int BINDER_LOOPER_STATE_POLL ;
 int BR_DEAD_REPLY ;
 int BUG () ;
 int EPOLLHUP ;
 int POLLFREE ;
 int __acquire (int *) ;
 int __release (int *) ;
 int atomic_inc (int *) ;
 int binder_debug (int ,char*,int ,int ,int ,char*) ;
 int binder_inner_proc_lock (int ) ;
 int binder_inner_proc_unlock (int ) ;
 int binder_release_work (struct binder_proc*,int *) ;
 int binder_send_failed_reply (struct binder_transaction*,int ) ;
 int binder_thread_dec_tmpref (struct binder_thread*) ;
 int rb_erase (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int synchronize_rcu () ;
 scalar_t__ waitqueue_active (int *) ;
 int wake_up_poll (int *,int) ;

__attribute__((used)) static int binder_thread_release(struct binder_proc *proc,
     struct binder_thread *thread)
{
 struct binder_transaction *t;
 struct binder_transaction *send_reply = ((void*)0);
 int active_transactions = 0;
 struct binder_transaction *last_t = ((void*)0);

 binder_inner_proc_lock(thread->proc);






 proc->tmp_ref++;




 atomic_inc(&thread->tmp_ref);
 rb_erase(&thread->rb_node, &proc->threads);
 t = thread->transaction_stack;
 if (t) {
  spin_lock(&t->lock);
  if (t->to_thread == thread)
   send_reply = t;
 } else {
  __acquire(&t->lock);
 }
 thread->is_dead = 1;

 while (t) {
  last_t = t;
  active_transactions++;
  binder_debug(BINDER_DEBUG_DEAD_TRANSACTION,
        "release %d:%d transaction %d %s, still active\n",
         proc->pid, thread->pid,
        t->debug_id,
        (t->to_thread == thread) ? "in" : "out");

  if (t->to_thread == thread) {
   t->to_proc = ((void*)0);
   t->to_thread = ((void*)0);
   if (t->buffer) {
    t->buffer->transaction = ((void*)0);
    t->buffer = ((void*)0);
   }
   t = t->to_parent;
  } else if (t->from == thread) {
   t->from = ((void*)0);
   t = t->from_parent;
  } else
   BUG();
  spin_unlock(&last_t->lock);
  if (t)
   spin_lock(&t->lock);
  else
   __acquire(&t->lock);
 }

 __release(&t->lock);







 if ((thread->looper & BINDER_LOOPER_STATE_POLL) &&
     waitqueue_active(&thread->wait)) {
  wake_up_poll(&thread->wait, EPOLLHUP | POLLFREE);
 }

 binder_inner_proc_unlock(thread->proc);







 if (thread->looper & BINDER_LOOPER_STATE_POLL)
  synchronize_rcu();

 if (send_reply)
  binder_send_failed_reply(send_reply, BR_DEAD_REPLY);
 binder_release_work(proc, &thread->todo);
 binder_thread_dec_tmpref(thread);
 return active_transactions;
}
