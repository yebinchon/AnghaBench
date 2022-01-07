
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct binder_work {int dummy; } ;
struct binder_proc {int alloc; int todo; } ;
struct binder_node {int has_async_transaction; int async_todo; struct binder_proc* proc; } ;
struct binder_buffer {struct binder_node* target_node; scalar_t__ async_transaction; TYPE_1__* transaction; } ;
struct TYPE_2__ {int * buffer; } ;


 int BUG_ON (int) ;
 int binder_alloc_free_buf (int *,struct binder_buffer*) ;
 struct binder_work* binder_dequeue_work_head_ilocked (int *) ;
 int binder_enqueue_work_ilocked (struct binder_work*,int *) ;
 int binder_inner_proc_lock (struct binder_proc*) ;
 int binder_inner_proc_unlock (struct binder_proc*) ;
 int binder_node_inner_lock (struct binder_node*) ;
 int binder_node_inner_unlock (struct binder_node*) ;
 int binder_transaction_buffer_release (struct binder_proc*,struct binder_buffer*,int ,int) ;
 int binder_wakeup_proc_ilocked (struct binder_proc*) ;
 int trace_binder_transaction_buffer_release (struct binder_buffer*) ;

__attribute__((used)) static void
binder_free_buf(struct binder_proc *proc, struct binder_buffer *buffer)
{
 binder_inner_proc_lock(proc);
 if (buffer->transaction) {
  buffer->transaction->buffer = ((void*)0);
  buffer->transaction = ((void*)0);
 }
 binder_inner_proc_unlock(proc);
 if (buffer->async_transaction && buffer->target_node) {
  struct binder_node *buf_node;
  struct binder_work *w;

  buf_node = buffer->target_node;
  binder_node_inner_lock(buf_node);
  BUG_ON(!buf_node->has_async_transaction);
  BUG_ON(buf_node->proc != proc);
  w = binder_dequeue_work_head_ilocked(
    &buf_node->async_todo);
  if (!w) {
   buf_node->has_async_transaction = 0;
  } else {
   binder_enqueue_work_ilocked(
     w, &proc->todo);
   binder_wakeup_proc_ilocked(proc);
  }
  binder_node_inner_unlock(buf_node);
 }
 trace_binder_transaction_buffer_release(buffer);
 binder_transaction_buffer_release(proc, buffer, 0, 0);
 binder_alloc_free_buf(&proc->alloc, buffer);
}
