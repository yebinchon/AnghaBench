
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssif_info {int req_events; int ssif_state; struct ipmi_smi_msg* curr_msg; } ;
struct ipmi_smi_msg {int* data; int data_size; } ;


 int IPMI_NETFN_APP_REQUEST ;
 int IPMI_READ_EVENT_MSG_BUFFER_CMD ;
 int SSIF_GETTING_EVENTS ;
 int SSIF_NORMAL ;
 int check_start_send (struct ssif_info*,unsigned long*,struct ipmi_smi_msg*) ;
 struct ipmi_smi_msg* ipmi_alloc_smi_msg () ;
 int ipmi_ssif_unlock_cond (struct ssif_info*,unsigned long*) ;

__attribute__((used)) static void start_event_fetch(struct ssif_info *ssif_info, unsigned long *flags)
{
 struct ipmi_smi_msg *msg;

 ssif_info->req_events = 0;

 msg = ipmi_alloc_smi_msg();
 if (!msg) {
  ssif_info->ssif_state = SSIF_NORMAL;
  ipmi_ssif_unlock_cond(ssif_info, flags);
  return;
 }

 ssif_info->curr_msg = msg;
 ssif_info->ssif_state = SSIF_GETTING_EVENTS;
 ipmi_ssif_unlock_cond(ssif_info, flags);

 msg->data[0] = (IPMI_NETFN_APP_REQUEST << 2);
 msg->data[1] = IPMI_READ_EVENT_MSG_BUFFER_CMD;
 msg->data_size = 2;

 check_start_send(ssif_info, flags, msg);
}
