
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct binder_transaction {TYPE_1__* buffer; struct binder_proc* to_proc; } ;
struct binder_thread {int pid; struct binder_proc* proc; } ;
struct binder_proc {int alloc; int pid; } ;
struct binder_fd_array_object {int num_fds; scalar_t__ parent_offset; } ;
struct binder_buffer_object {scalar_t__ length; uintptr_t buffer; } ;
typedef int fd ;
typedef scalar_t__ binder_size_t ;
struct TYPE_2__ {scalar_t__ user_data; } ;


 int EINVAL ;
 int IS_ALIGNED (unsigned long,int) ;
 int SIZE_MAX ;
 int binder_alloc_copy_from_buffer (int *,int *,TYPE_1__*,scalar_t__,int) ;
 int binder_translate_fd (int ,scalar_t__,struct binder_transaction*,struct binder_thread*,struct binder_transaction*) ;
 int binder_user_error (char*,int ,int ,...) ;

__attribute__((used)) static int binder_translate_fd_array(struct binder_fd_array_object *fda,
         struct binder_buffer_object *parent,
         struct binder_transaction *t,
         struct binder_thread *thread,
         struct binder_transaction *in_reply_to)
{
 binder_size_t fdi, fd_buf_size;
 binder_size_t fda_offset;
 struct binder_proc *proc = thread->proc;
 struct binder_proc *target_proc = t->to_proc;

 fd_buf_size = sizeof(u32) * fda->num_fds;
 if (fda->num_fds >= SIZE_MAX / sizeof(u32)) {
  binder_user_error("%d:%d got transaction with invalid number of fds (%lld)\n",
      proc->pid, thread->pid, (u64)fda->num_fds);
  return -EINVAL;
 }
 if (fd_buf_size > parent->length ||
     fda->parent_offset > parent->length - fd_buf_size) {

  binder_user_error("%d:%d not enough space to store %lld fds in buffer\n",
      proc->pid, thread->pid, (u64)fda->num_fds);
  return -EINVAL;
 }







 fda_offset = (parent->buffer - (uintptr_t)t->buffer->user_data) +
  fda->parent_offset;
 if (!IS_ALIGNED((unsigned long)fda_offset, sizeof(u32))) {
  binder_user_error("%d:%d parent offset not aligned correctly.\n",
      proc->pid, thread->pid);
  return -EINVAL;
 }
 for (fdi = 0; fdi < fda->num_fds; fdi++) {
  u32 fd;
  int ret;
  binder_size_t offset = fda_offset + fdi * sizeof(fd);

  ret = binder_alloc_copy_from_buffer(&target_proc->alloc,
          &fd, t->buffer,
          offset, sizeof(fd));
  if (!ret)
   ret = binder_translate_fd(fd, offset, t, thread,
        in_reply_to);
  if (ret < 0)
   return ret;
 }
 return 0;
}
