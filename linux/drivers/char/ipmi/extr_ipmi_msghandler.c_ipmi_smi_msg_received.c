
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmi_smi_msg {int link; } ;
struct ipmi_smi {int run_to_completion; int recv_tasklet; int xmit_msgs_lock; struct ipmi_smi_msg* curr_msg; int waiting_rcv_msgs_lock; int waiting_rcv_msgs; } ;


 int list_add_tail (int *,int *) ;
 int smi_recv_tasklet (unsigned long) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tasklet_schedule (int *) ;

void ipmi_smi_msg_received(struct ipmi_smi *intf,
      struct ipmi_smi_msg *msg)
{
 unsigned long flags = 0;
 int run_to_completion = intf->run_to_completion;





 if (!run_to_completion)
  spin_lock_irqsave(&intf->waiting_rcv_msgs_lock, flags);
 list_add_tail(&msg->link, &intf->waiting_rcv_msgs);
 if (!run_to_completion)
  spin_unlock_irqrestore(&intf->waiting_rcv_msgs_lock,
           flags);

 if (!run_to_completion)
  spin_lock_irqsave(&intf->xmit_msgs_lock, flags);




 if (msg == intf->curr_msg)
  intf->curr_msg = ((void*)0);
 if (!run_to_completion)
  spin_unlock_irqrestore(&intf->xmit_msgs_lock, flags);

 if (run_to_completion)
  smi_recv_tasklet((unsigned long) intf);
 else
  tasklet_schedule(&intf->recv_tasklet);
}
