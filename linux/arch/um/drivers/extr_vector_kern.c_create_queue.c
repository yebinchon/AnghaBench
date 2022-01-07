
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int msg_iovlen; scalar_t__ msg_namelen; int * msg_name; int msg_flags; scalar_t__ msg_controllen; int * msg_control; struct iovec* msg_iov; } ;
struct vector_queue {int max_depth; int max_iov_frags; struct vector_queue* mmsg_vector; scalar_t__ tail; scalar_t__ head; scalar_t__ queue_depth; int tail_lock; int head_lock; TYPE_1__ msg_hdr; int ** skbuff_vector; int dev; } ;
struct vector_private {scalar_t__ header_size; int dev; } ;
struct mmsghdr {int max_depth; int max_iov_frags; struct mmsghdr* mmsg_vector; scalar_t__ tail; scalar_t__ head; scalar_t__ queue_depth; int tail_lock; int head_lock; TYPE_1__ msg_hdr; int ** skbuff_vector; int dev; } ;
struct iovec {int iov_len; int * iov_base; } ;


 int GFP_KERNEL ;
 int MSG_DONTWAIT ;
 int destroy_queue (struct vector_queue*) ;
 int kfree (struct vector_queue*) ;
 void* kmalloc (int,int ) ;
 struct iovec* kmalloc_array (int,int,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct vector_queue *create_queue(
 struct vector_private *vp,
 int max_size,
 int header_size,
 int num_extra_frags)
{
 struct vector_queue *result;
 int i;
 struct iovec *iov;
 struct mmsghdr *mmsg_vector;

 result = kmalloc(sizeof(struct vector_queue), GFP_KERNEL);
 if (result == ((void*)0))
  return ((void*)0);
 result->max_depth = max_size;
 result->dev = vp->dev;
 result->mmsg_vector = kmalloc(
  (sizeof(struct mmsghdr) * max_size), GFP_KERNEL);
 if (result->mmsg_vector == ((void*)0))
  goto out_mmsg_fail;
 result->skbuff_vector = kmalloc(
  (sizeof(void *) * max_size), GFP_KERNEL);
 if (result->skbuff_vector == ((void*)0))
  goto out_skb_fail;



 mmsg_vector = result->mmsg_vector;
 for (i = 0; i < max_size; i++) {



  *(result->skbuff_vector + i) = ((void*)0);
  mmsg_vector->msg_hdr.msg_iov = ((void*)0);
  mmsg_vector++;
 }
 mmsg_vector = result->mmsg_vector;
 result->max_iov_frags = num_extra_frags;
 for (i = 0; i < max_size; i++) {
  if (vp->header_size > 0)
   iov = kmalloc_array(3 + num_extra_frags,
         sizeof(struct iovec),
         GFP_KERNEL
   );
  else
   iov = kmalloc_array(2 + num_extra_frags,
         sizeof(struct iovec),
         GFP_KERNEL
   );
  if (iov == ((void*)0))
   goto out_fail;
  mmsg_vector->msg_hdr.msg_iov = iov;
  mmsg_vector->msg_hdr.msg_iovlen = 1;
  mmsg_vector->msg_hdr.msg_control = ((void*)0);
  mmsg_vector->msg_hdr.msg_controllen = 0;
  mmsg_vector->msg_hdr.msg_flags = MSG_DONTWAIT;
  mmsg_vector->msg_hdr.msg_name = ((void*)0);
  mmsg_vector->msg_hdr.msg_namelen = 0;
  if (vp->header_size > 0) {
   iov->iov_base = kmalloc(header_size, GFP_KERNEL);
   if (iov->iov_base == ((void*)0))
    goto out_fail;
   iov->iov_len = header_size;
   mmsg_vector->msg_hdr.msg_iovlen = 2;
   iov++;
  }
  iov->iov_base = ((void*)0);
  iov->iov_len = 0;
  mmsg_vector++;
 }
 spin_lock_init(&result->head_lock);
 spin_lock_init(&result->tail_lock);
 result->queue_depth = 0;
 result->head = 0;
 result->tail = 0;
 return result;
out_skb_fail:
 kfree(result->mmsg_vector);
out_mmsg_fail:
 kfree(result);
 return ((void*)0);
out_fail:
 destroy_queue(result);
 return ((void*)0);
}
