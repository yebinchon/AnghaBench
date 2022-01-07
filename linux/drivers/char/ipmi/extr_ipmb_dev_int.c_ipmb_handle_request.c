
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmb_request_elem {int list; int request; } ;
struct ipmb_msg {int dummy; } ;
struct ipmb_dev {int wait_queue; int request_queue_len; int request_queue; int request; } ;


 int GFP_ATOMIC ;
 scalar_t__ REQUEST_QUEUE_MAX_LEN ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 struct ipmb_request_elem* kmalloc (int,int ) ;
 int list_add (int *,int *) ;
 int memcpy (int *,int *,int) ;
 int wake_up_all (int *) ;

__attribute__((used)) static void ipmb_handle_request(struct ipmb_dev *ipmb_dev)
{
 struct ipmb_request_elem *queue_elem;

 if (atomic_read(&ipmb_dev->request_queue_len) >=
   REQUEST_QUEUE_MAX_LEN)
  return;

 queue_elem = kmalloc(sizeof(*queue_elem), GFP_ATOMIC);
 if (!queue_elem)
  return;

 memcpy(&queue_elem->request, &ipmb_dev->request,
  sizeof(struct ipmb_msg));
 list_add(&queue_elem->list, &ipmb_dev->request_queue);
 atomic_inc(&ipmb_dev->request_queue_len);
 wake_up_all(&ipmb_dev->wait_queue);
}
