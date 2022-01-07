
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {scalar_t__ type; } ;
struct flat_binder_object {scalar_t__ cookie; int handle; scalar_t__ binder; TYPE_1__ hdr; } ;
struct binder_transaction {struct binder_proc* to_proc; } ;
struct binder_thread {int todo; int pid; struct binder_proc* proc; } ;
struct binder_ref_data {int desc; int debug_id; } ;
struct binder_proc {int tsk; int pid; } ;
struct binder_node {scalar_t__ cookie; scalar_t__ ptr; int debug_id; } ;


 int BINDER_DEBUG_TRANSACTION ;
 scalar_t__ BINDER_TYPE_BINDER ;
 scalar_t__ BINDER_TYPE_HANDLE ;
 scalar_t__ BINDER_TYPE_WEAK_HANDLE ;
 int EINVAL ;
 int ENOMEM ;
 int EPERM ;
 int binder_debug (int ,char*,int ,int ,int ,int ) ;
 struct binder_node* binder_get_node (struct binder_proc*,scalar_t__) ;
 int binder_inc_ref_for_node (struct binder_proc*,struct binder_node*,int,int *,struct binder_ref_data*) ;
 struct binder_node* binder_new_node (struct binder_proc*,struct flat_binder_object*) ;
 int binder_put_node (struct binder_node*) ;
 int binder_user_error (char*,int ,int ,int ,int ,int ,int ) ;
 scalar_t__ security_binder_transfer_binder (int ,int ) ;
 int trace_binder_transaction_node_to_ref (struct binder_transaction*,struct binder_node*,struct binder_ref_data*) ;

__attribute__((used)) static int binder_translate_binder(struct flat_binder_object *fp,
       struct binder_transaction *t,
       struct binder_thread *thread)
{
 struct binder_node *node;
 struct binder_proc *proc = thread->proc;
 struct binder_proc *target_proc = t->to_proc;
 struct binder_ref_data rdata;
 int ret = 0;

 node = binder_get_node(proc, fp->binder);
 if (!node) {
  node = binder_new_node(proc, fp);
  if (!node)
   return -ENOMEM;
 }
 if (fp->cookie != node->cookie) {
  binder_user_error("%d:%d sending u%016llx node %d, cookie mismatch %016llx != %016llx\n",
      proc->pid, thread->pid, (u64)fp->binder,
      node->debug_id, (u64)fp->cookie,
      (u64)node->cookie);
  ret = -EINVAL;
  goto done;
 }
 if (security_binder_transfer_binder(proc->tsk, target_proc->tsk)) {
  ret = -EPERM;
  goto done;
 }

 ret = binder_inc_ref_for_node(target_proc, node,
   fp->hdr.type == BINDER_TYPE_BINDER,
   &thread->todo, &rdata);
 if (ret)
  goto done;

 if (fp->hdr.type == BINDER_TYPE_BINDER)
  fp->hdr.type = BINDER_TYPE_HANDLE;
 else
  fp->hdr.type = BINDER_TYPE_WEAK_HANDLE;
 fp->binder = 0;
 fp->handle = rdata.desc;
 fp->cookie = 0;

 trace_binder_transaction_node_to_ref(t, node, &rdata);
 binder_debug(BINDER_DEBUG_TRANSACTION,
       "        node %d u%016llx -> ref %d desc %d\n",
       node->debug_id, (u64)node->ptr,
       rdata.debug_id, rdata.desc);
done:
 binder_put_node(node);
 return ret;
}
