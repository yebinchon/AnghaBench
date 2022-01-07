
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct OpalMsgNode {int list; int msg; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 unsigned long OPAL_MSG_MEM_ERR ;
 struct OpalMsgNode* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int mem_error_work ;
 int memcpy (int *,void*,int) ;
 int opal_mem_err_lock ;
 int opal_memory_err_list ;
 int pr_err (char*) ;
 int schedule_work (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int opal_memory_err_event(struct notifier_block *nb,
     unsigned long msg_type, void *msg)
{
 unsigned long flags;
 struct OpalMsgNode *msg_node;

 if (msg_type != OPAL_MSG_MEM_ERR)
  return 0;

 msg_node = kzalloc(sizeof(*msg_node), GFP_ATOMIC);
 if (!msg_node) {
  pr_err("MEMORY_ERROR: out of memory, Opal message event not"
         "handled\n");
  return -ENOMEM;
 }
 memcpy(&msg_node->msg, msg, sizeof(msg_node->msg));

 spin_lock_irqsave(&opal_mem_err_lock, flags);
 list_add(&msg_node->list, &opal_memory_err_list);
 spin_unlock_irqrestore(&opal_mem_err_lock, flags);

 schedule_work(&mem_error_work);
 return 0;
}
