
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct binder_transaction {struct binder_proc* to_proc; struct binder_buffer* buffer; } ;
struct binder_thread {int pid; struct binder_proc* proc; } ;
struct binder_proc {int pid; int alloc; } ;
struct binder_object {int dummy; } ;
struct binder_buffer_object {int flags; int parent_offset; int length; scalar_t__ buffer; int parent; } ;
struct binder_buffer {scalar_t__ user_data; } ;
typedef int binder_uintptr_t ;
typedef int binder_size_t ;


 int BINDER_BUFFER_FLAG_HAS_PARENT ;
 int EINVAL ;
 scalar_t__ binder_alloc_copy_to_buffer (int *,struct binder_buffer*,int,scalar_t__*,int) ;
 int binder_user_error (char*,int ,int ) ;
 int binder_validate_fixup (struct binder_proc*,struct binder_buffer*,int,int,int,int,int) ;
 struct binder_buffer_object* binder_validate_ptr (struct binder_proc*,struct binder_buffer*,struct binder_object*,int ,int,int*,int) ;

__attribute__((used)) static int binder_fixup_parent(struct binder_transaction *t,
          struct binder_thread *thread,
          struct binder_buffer_object *bp,
          binder_size_t off_start_offset,
          binder_size_t num_valid,
          binder_size_t last_fixup_obj_off,
          binder_size_t last_fixup_min_off)
{
 struct binder_buffer_object *parent;
 struct binder_buffer *b = t->buffer;
 struct binder_proc *proc = thread->proc;
 struct binder_proc *target_proc = t->to_proc;
 struct binder_object object;
 binder_size_t buffer_offset;
 binder_size_t parent_offset;

 if (!(bp->flags & BINDER_BUFFER_FLAG_HAS_PARENT))
  return 0;

 parent = binder_validate_ptr(target_proc, b, &object, bp->parent,
         off_start_offset, &parent_offset,
         num_valid);
 if (!parent) {
  binder_user_error("%d:%d got transaction with invalid parent offset or type\n",
      proc->pid, thread->pid);
  return -EINVAL;
 }

 if (!binder_validate_fixup(target_proc, b, off_start_offset,
       parent_offset, bp->parent_offset,
       last_fixup_obj_off,
       last_fixup_min_off)) {
  binder_user_error("%d:%d got transaction with out-of-order buffer fixup\n",
      proc->pid, thread->pid);
  return -EINVAL;
 }

 if (parent->length < sizeof(binder_uintptr_t) ||
     bp->parent_offset > parent->length - sizeof(binder_uintptr_t)) {

  binder_user_error("%d:%d got transaction with invalid parent offset\n",
      proc->pid, thread->pid);
  return -EINVAL;
 }
 buffer_offset = bp->parent_offset +
   (uintptr_t)parent->buffer - (uintptr_t)b->user_data;
 if (binder_alloc_copy_to_buffer(&target_proc->alloc, b, buffer_offset,
     &bp->buffer, sizeof(bp->buffer))) {
  binder_user_error("%d:%d got transaction with invalid parent offset\n",
      proc->pid, thread->pid);
  return -EINVAL;
 }

 return 0;
}
