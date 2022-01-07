
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opal_prd_msg_queue_item {int list; int msg; } ;
struct opal_prd_msg_header {int size; } ;
struct opal_msg {scalar_t__ params; } ;
struct notifier_block {int dummy; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 unsigned long OPAL_MSG_PRD ;
 unsigned long OPAL_MSG_PRD2 ;
 int be16_to_cpu (int ) ;
 struct opal_prd_msg_queue_item* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int memcpy (int *,scalar_t__,int) ;
 int opal_prd_msg_queue ;
 int opal_prd_msg_queue_lock ;
 int opal_prd_msg_wait ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static int opal_prd_msg_notifier(struct notifier_block *nb,
  unsigned long msg_type, void *_msg)
{
 struct opal_prd_msg_queue_item *item;
 struct opal_prd_msg_header *hdr;
 struct opal_msg *msg = _msg;
 int msg_size, item_size;
 unsigned long flags;

 if (msg_type != OPAL_MSG_PRD && msg_type != OPAL_MSG_PRD2)
  return 0;



 hdr = (void *)msg->params;
 msg_size = be16_to_cpu(hdr->size);
 item_size = msg_size + sizeof(*item) - sizeof(item->msg);

 item = kzalloc(item_size, GFP_ATOMIC);
 if (!item)
  return -ENOMEM;

 memcpy(&item->msg, msg->params, msg_size);

 spin_lock_irqsave(&opal_prd_msg_queue_lock, flags);
 list_add_tail(&item->list, &opal_prd_msg_queue);
 spin_unlock_irqrestore(&opal_prd_msg_queue_lock, flags);

 wake_up_interruptible(&opal_prd_msg_wait);

 return 0;
}
