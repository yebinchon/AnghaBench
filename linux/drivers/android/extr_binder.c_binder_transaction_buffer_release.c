
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int const u64 ;
typedef scalar_t__ u32 ;
struct flat_binder_object {int handle; scalar_t__ binder; } ;
struct binder_ref_data {int const desc; int debug_id; } ;
struct binder_proc {int alloc; int tsk; int pid; } ;
struct binder_object_header {int type; } ;
struct binder_object {struct binder_object_header hdr; } ;
struct binder_node {scalar_t__ ptr; int debug_id; } ;
struct binder_fd_array_object {int num_fds; scalar_t__ parent_offset; int parent; } ;
struct binder_buffer_object {scalar_t__ length; int buffer; } ;
struct binder_buffer {int debug_id; scalar_t__ offsets_size; int user_data; int data_size; struct binder_node* target_node; } ;
typedef int object_offset ;
typedef int fd ;
typedef scalar_t__ binder_size_t ;
struct TYPE_2__ {int group_leader; } ;


 scalar_t__ ALIGN (int ,int) ;
 int BINDER_DEBUG_TRANSACTION ;







 int SIZE_MAX ;
 int WARN_ON (int) ;
 int binder_alloc_copy_from_buffer (int *,scalar_t__*,struct binder_buffer*,scalar_t__,int) ;
 int binder_debug (int ,char*,int ,int const,...) ;
 int binder_dec_node (struct binder_node*,int,int ) ;
 int binder_dec_ref_for_handle (struct binder_proc*,int ,int,struct binder_ref_data*) ;
 int binder_deferred_fd_close (scalar_t__) ;
 struct binder_node* binder_get_node (struct binder_proc*,scalar_t__) ;
 size_t binder_get_object (struct binder_proc*,struct binder_buffer*,scalar_t__,struct binder_object*) ;
 int binder_put_node (struct binder_node*) ;
 struct binder_buffer_object* binder_validate_ptr (struct binder_proc*,struct binder_buffer*,struct binder_object*,int ,scalar_t__,int *,scalar_t__) ;
 TYPE_1__* current ;
 int pr_err (char*,int,...) ;
 struct binder_fd_array_object* to_binder_fd_array_object (struct binder_object_header*) ;
 struct flat_binder_object* to_flat_binder_object (struct binder_object_header*) ;

__attribute__((used)) static void binder_transaction_buffer_release(struct binder_proc *proc,
           struct binder_buffer *buffer,
           binder_size_t failed_at,
           bool is_failure)
{
 int debug_id = buffer->debug_id;
 binder_size_t off_start_offset, buffer_offset, off_end_offset;

 binder_debug(BINDER_DEBUG_TRANSACTION,
       "%d buffer release %d, size %zd-%zd, failed at %llx\n",
       proc->pid, buffer->debug_id,
       buffer->data_size, buffer->offsets_size,
       (unsigned long long)failed_at);

 if (buffer->target_node)
  binder_dec_node(buffer->target_node, 1, 0);

 off_start_offset = ALIGN(buffer->data_size, sizeof(void *));
 off_end_offset = is_failure ? failed_at :
    off_start_offset + buffer->offsets_size;
 for (buffer_offset = off_start_offset; buffer_offset < off_end_offset;
      buffer_offset += sizeof(binder_size_t)) {
  struct binder_object_header *hdr;
  size_t object_size = 0;
  struct binder_object object;
  binder_size_t object_offset;

  if (!binder_alloc_copy_from_buffer(&proc->alloc, &object_offset,
         buffer, buffer_offset,
         sizeof(object_offset)))
   object_size = binder_get_object(proc, buffer,
       object_offset, &object);
  if (object_size == 0) {
   pr_err("transaction release %d bad object at offset %lld, size %zd\n",
          debug_id, (u64)object_offset, buffer->data_size);
   continue;
  }
  hdr = &object.hdr;
  switch (hdr->type) {
  case 134:
  case 129: {
   struct flat_binder_object *fp;
   struct binder_node *node;

   fp = to_flat_binder_object(hdr);
   node = binder_get_node(proc, fp->binder);
   if (node == ((void*)0)) {
    pr_err("transaction release %d bad node %016llx\n",
           debug_id, (u64)fp->binder);
    break;
   }
   binder_debug(BINDER_DEBUG_TRANSACTION,
         "        node %d u%016llx\n",
         node->debug_id, (u64)node->ptr);
   binder_dec_node(node, hdr->type == 134,
     0);
   binder_put_node(node);
  } break;
  case 131:
  case 128: {
   struct flat_binder_object *fp;
   struct binder_ref_data rdata;
   int ret;

   fp = to_flat_binder_object(hdr);
   ret = binder_dec_ref_for_handle(proc, fp->handle,
    hdr->type == 131, &rdata);

   if (ret) {
    pr_err("transaction release %d bad handle %d, ret = %d\n",
     debug_id, fp->handle, ret);
    break;
   }
   binder_debug(BINDER_DEBUG_TRANSACTION,
         "        ref %d desc %d\n",
         rdata.debug_id, rdata.desc);
  } break;

  case 133: {
   WARN_ON(failed_at &&
    proc->tsk == current->group_leader);
  } break;
  case 130:




   break;
  case 132: {
   struct binder_fd_array_object *fda;
   struct binder_buffer_object *parent;
   struct binder_object ptr_object;
   binder_size_t fda_offset;
   size_t fd_index;
   binder_size_t fd_buf_size;
   binder_size_t num_valid;

   if (proc->tsk != current->group_leader) {





    continue;
   }

   num_valid = (buffer_offset - off_start_offset) /
      sizeof(binder_size_t);
   fda = to_binder_fd_array_object(hdr);
   parent = binder_validate_ptr(proc, buffer, &ptr_object,
           fda->parent,
           off_start_offset,
           ((void*)0),
           num_valid);
   if (!parent) {
    pr_err("transaction release %d bad parent offset\n",
           debug_id);
    continue;
   }
   fd_buf_size = sizeof(u32) * fda->num_fds;
   if (fda->num_fds >= SIZE_MAX / sizeof(u32)) {
    pr_err("transaction release %d invalid number of fds (%lld)\n",
           debug_id, (u64)fda->num_fds);
    continue;
   }
   if (fd_buf_size > parent->length ||
       fda->parent_offset > parent->length - fd_buf_size) {

    pr_err("transaction release %d not enough space for %lld fds in buffer\n",
           debug_id, (u64)fda->num_fds);
    continue;
   }







   fda_offset =
       (parent->buffer - (uintptr_t)buffer->user_data) +
       fda->parent_offset;
   for (fd_index = 0; fd_index < fda->num_fds;
        fd_index++) {
    u32 fd;
    int err;
    binder_size_t offset = fda_offset +
     fd_index * sizeof(fd);

    err = binder_alloc_copy_from_buffer(
      &proc->alloc, &fd, buffer,
      offset, sizeof(fd));
    WARN_ON(err);
    if (!err)
     binder_deferred_fd_close(fd);
   }
  } break;
  default:
   pr_err("transaction release %d bad object type %x\n",
    debug_id, hdr->type);
   break;
  }
 }
}
