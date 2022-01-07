
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmi_smi_msg {int dummy; } ;
struct ipmi_smi_handlers {int (* sender ) (int ,struct ipmi_smi_msg*) ;} ;
struct ipmi_smi {int run_to_completion; int send_info; int xmit_msgs_lock; } ;


 struct ipmi_smi_msg* smi_add_send_msg (struct ipmi_smi*,struct ipmi_smi_msg*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int ,struct ipmi_smi_msg*) ;

__attribute__((used)) static void smi_send(struct ipmi_smi *intf,
       const struct ipmi_smi_handlers *handlers,
       struct ipmi_smi_msg *smi_msg, int priority)
{
 int run_to_completion = intf->run_to_completion;
 unsigned long flags = 0;

 if (!run_to_completion)
  spin_lock_irqsave(&intf->xmit_msgs_lock, flags);
 smi_msg = smi_add_send_msg(intf, smi_msg, priority);

 if (!run_to_completion)
  spin_unlock_irqrestore(&intf->xmit_msgs_lock, flags);

 if (smi_msg)
  handlers->sender(intf->send_info, smi_msg);
}
