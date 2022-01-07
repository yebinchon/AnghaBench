
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmi_smi_msg {int link; } ;
struct ipmi_smi {struct ipmi_smi_msg* curr_msg; int xmit_msgs; int hp_xmit_msgs; } ;


 int list_add_tail (int *,int *) ;

__attribute__((used)) static struct ipmi_smi_msg *smi_add_send_msg(struct ipmi_smi *intf,
          struct ipmi_smi_msg *smi_msg,
          int priority)
{
 if (intf->curr_msg) {
  if (priority > 0)
   list_add_tail(&smi_msg->link, &intf->hp_xmit_msgs);
  else
   list_add_tail(&smi_msg->link, &intf->xmit_msgs);
  smi_msg = ((void*)0);
 } else {
  intf->curr_msg = smi_msg;
 }

 return smi_msg;
}
