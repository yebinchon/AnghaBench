
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct file {int dummy; } ;
struct binder_txn_fd_fixup {int fixup_entry; int offset; struct file* file; } ;
struct binder_transaction {int flags; int fd_fixups; TYPE_2__* buffer; struct binder_proc* to_proc; } ;
struct binder_thread {int pid; struct binder_proc* proc; } ;
struct binder_proc {int tsk; int pid; } ;
typedef int binder_size_t ;
struct TYPE_4__ {TYPE_1__* target_node; } ;
struct TYPE_3__ {int accept_fds; } ;


 int EBADF ;
 int ENOMEM ;
 int EPERM ;
 int GFP_KERNEL ;
 int TF_ACCEPT_FDS ;
 int binder_user_error (char*,int ,int ,char*,...) ;
 struct file* fget (int ) ;
 int fput (struct file*) ;
 struct binder_txn_fd_fixup* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int security_binder_transfer_file (int ,int ,struct file*) ;
 int trace_binder_transaction_fd_send (struct binder_transaction*,int ,int ) ;

__attribute__((used)) static int binder_translate_fd(u32 fd, binder_size_t fd_offset,
          struct binder_transaction *t,
          struct binder_thread *thread,
          struct binder_transaction *in_reply_to)
{
 struct binder_proc *proc = thread->proc;
 struct binder_proc *target_proc = t->to_proc;
 struct binder_txn_fd_fixup *fixup;
 struct file *file;
 int ret = 0;
 bool target_allows_fd;

 if (in_reply_to)
  target_allows_fd = !!(in_reply_to->flags & TF_ACCEPT_FDS);
 else
  target_allows_fd = t->buffer->target_node->accept_fds;
 if (!target_allows_fd) {
  binder_user_error("%d:%d got %s with fd, %d, but target does not allow fds\n",
      proc->pid, thread->pid,
      in_reply_to ? "reply" : "transaction",
      fd);
  ret = -EPERM;
  goto err_fd_not_accepted;
 }

 file = fget(fd);
 if (!file) {
  binder_user_error("%d:%d got transaction with invalid fd, %d\n",
      proc->pid, thread->pid, fd);
  ret = -EBADF;
  goto err_fget;
 }
 ret = security_binder_transfer_file(proc->tsk, target_proc->tsk, file);
 if (ret < 0) {
  ret = -EPERM;
  goto err_security;
 }






 fixup = kzalloc(sizeof(*fixup), GFP_KERNEL);
 if (!fixup) {
  ret = -ENOMEM;
  goto err_alloc;
 }
 fixup->file = file;
 fixup->offset = fd_offset;
 trace_binder_transaction_fd_send(t, fd, fixup->offset);
 list_add_tail(&fixup->fixup_entry, &t->fd_fixups);

 return ret;

err_alloc:
err_security:
 fput(file);
err_fget:
err_fd_not_accepted:
 return ret;
}
