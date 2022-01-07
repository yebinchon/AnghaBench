
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opal_msg {int * params; } ;
struct notifier_block {int dummy; } ;
struct OpalHmiEvtNode {int list; int hmi_evt; } ;
struct OpalHMIEvent {int dummy; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 unsigned long OPAL_MSG_HMI_EVT ;
 int hmi_event_work ;
 struct OpalHmiEvtNode* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int memcpy (int *,struct OpalHMIEvent*,int) ;
 int opal_hmi_evt_list ;
 int opal_hmi_evt_lock ;
 int pr_err (char*) ;
 int schedule_work (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int opal_handle_hmi_event(struct notifier_block *nb,
     unsigned long msg_type, void *msg)
{
 unsigned long flags;
 struct OpalHMIEvent *hmi_evt;
 struct opal_msg *hmi_msg = msg;
 struct OpalHmiEvtNode *msg_node;


 if (msg_type != OPAL_MSG_HMI_EVT)
  return 0;


 hmi_evt = (struct OpalHMIEvent *)&hmi_msg->params[0];


 msg_node = kzalloc(sizeof(*msg_node), GFP_ATOMIC);
 if (!msg_node) {
  pr_err("HMI: out of memory, Opal message event not handled\n");
  return -ENOMEM;
 }
 memcpy(&msg_node->hmi_evt, hmi_evt, sizeof(*hmi_evt));

 spin_lock_irqsave(&opal_hmi_evt_lock, flags);
 list_add(&msg_node->list, &opal_hmi_evt_list);
 spin_unlock_irqrestore(&opal_hmi_evt_lock, flags);

 schedule_work(&hmi_event_work);
 return 0;
}
