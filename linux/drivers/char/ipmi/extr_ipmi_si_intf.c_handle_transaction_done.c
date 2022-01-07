
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned char u8 ;
struct TYPE_4__ {int dev; int si_type; } ;
struct smi_info {int si_state; unsigned char msg_flags; struct ipmi_smi_msg* curr_msg; int supports_event_msg_buff; TYPE_2__ io; int si_sm; TYPE_1__* handlers; } ;
struct ipmi_smi_msg {unsigned int rsp_size; unsigned char* rsp; int (* done ) (struct ipmi_smi_msg*) ;} ;
struct TYPE_3__ {unsigned int (* get_result ) (int ,unsigned char*,int) ;int (* start_transaction ) (int ,unsigned char*,int) ;} ;


 unsigned char EVENT_MSG_BUFFER_FULL ;
 unsigned char GLOBAL_ENABLES_MASK ;
 int IPMI_MAX_MSG_LENGTH ;
 int IPMI_NETFN_APP_REQUEST ;
 unsigned char IPMI_SET_BMC_GLOBAL_ENABLES_CMD ;
 unsigned char RECEIVE_MSG_AVAIL ;
 int SI_BT ;







 int check_bt_irq (struct smi_info*,int) ;
 unsigned char current_global_enables (struct smi_info*,int ,int*) ;
 int debug_timestamp (char*) ;
 int deliver_recv_msg (struct smi_info*,struct ipmi_smi_msg*) ;
 int dev_warn (int ,char*,...) ;
 int events ;
 int handle_flags (struct smi_info*) ;
 int incoming_messages ;
 void* ipmi_alloc_smi_msg () ;
 int smi_inc_stat (struct smi_info*,int ) ;
 int start_getting_events (struct smi_info*) ;
 unsigned int stub1 (int ,unsigned char*,int) ;
 unsigned int stub10 (int ,unsigned char*,int) ;
 unsigned int stub2 (int ,unsigned char*,int) ;
 unsigned int stub3 (int ,unsigned char*,int) ;
 unsigned int stub4 (int ,unsigned char*,int) ;
 int stub5 (struct ipmi_smi_msg*) ;
 unsigned int stub6 (int ,unsigned char*,int) ;
 int stub7 (struct ipmi_smi_msg*) ;
 unsigned int stub8 (int ,unsigned char*,int) ;
 int stub9 (int ,unsigned char*,int) ;

__attribute__((used)) static void handle_transaction_done(struct smi_info *smi_info)
{
 struct ipmi_smi_msg *msg;

 debug_timestamp("Done");
 switch (smi_info->si_state) {
 case 129:
  if (!smi_info->curr_msg)
   break;

  smi_info->curr_msg->rsp_size
   = smi_info->handlers->get_result(
    smi_info->si_sm,
    smi_info->curr_msg->rsp,
    IPMI_MAX_MSG_LENGTH);






  msg = smi_info->curr_msg;
  smi_info->curr_msg = ((void*)0);
  deliver_recv_msg(smi_info, msg);
  break;

 case 131:
 {
  unsigned char msg[4];
  unsigned int len;


  len = smi_info->handlers->get_result(smi_info->si_sm, msg, 4);
  if (msg[2] != 0) {

   smi_info->si_state = 129;
  } else if (len < 4) {




   smi_info->si_state = 129;
  } else {
   smi_info->msg_flags = msg[3];
   handle_flags(smi_info);
  }
  break;
 }

 case 133:
 {
  unsigned char msg[3];


  smi_info->handlers->get_result(smi_info->si_sm, msg, 3);
  if (msg[2] != 0) {

   dev_warn(smi_info->io.dev,
     "Error clearing flags: %2.2x\n", msg[2]);
  }
  smi_info->si_state = 129;
  break;
 }

 case 132:
 {
  smi_info->curr_msg->rsp_size
   = smi_info->handlers->get_result(
    smi_info->si_sm,
    smi_info->curr_msg->rsp,
    IPMI_MAX_MSG_LENGTH);






  msg = smi_info->curr_msg;
  smi_info->curr_msg = ((void*)0);
  if (msg->rsp[2] != 0) {

   msg->done(msg);


   smi_info->msg_flags &= ~EVENT_MSG_BUFFER_FULL;
   handle_flags(smi_info);
  } else {
   smi_inc_stat(smi_info, events);







   handle_flags(smi_info);

   deliver_recv_msg(smi_info, msg);
  }
  break;
 }

 case 130:
 {
  smi_info->curr_msg->rsp_size
   = smi_info->handlers->get_result(
    smi_info->si_sm,
    smi_info->curr_msg->rsp,
    IPMI_MAX_MSG_LENGTH);






  msg = smi_info->curr_msg;
  smi_info->curr_msg = ((void*)0);
  if (msg->rsp[2] != 0) {

   msg->done(msg);


   smi_info->msg_flags &= ~RECEIVE_MSG_AVAIL;
   handle_flags(smi_info);
  } else {
   smi_inc_stat(smi_info, incoming_messages);







   handle_flags(smi_info);

   deliver_recv_msg(smi_info, msg);
  }
  break;
 }

 case 134:
 {
  unsigned char msg[4];
  u8 enables;
  bool irq_on;


  smi_info->handlers->get_result(smi_info->si_sm, msg, 4);
  if (msg[2] != 0) {
   dev_warn(smi_info->io.dev,
     "Couldn't get irq info: %x.\n", msg[2]);
   dev_warn(smi_info->io.dev,
     "Maybe ok, but ipmi might run very slowly.\n");
   smi_info->si_state = 129;
   break;
  }
  enables = current_global_enables(smi_info, 0, &irq_on);
  if (smi_info->io.si_type == SI_BT)

   check_bt_irq(smi_info, irq_on);
  if (enables != (msg[3] & GLOBAL_ENABLES_MASK)) {

   msg[0] = (IPMI_NETFN_APP_REQUEST << 2);
   msg[1] = IPMI_SET_BMC_GLOBAL_ENABLES_CMD;
   msg[2] = enables | (msg[3] & ~GLOBAL_ENABLES_MASK);
   smi_info->handlers->start_transaction(
    smi_info->si_sm, msg, 3);
   smi_info->si_state = 128;
  } else if (smi_info->supports_event_msg_buff) {
   smi_info->curr_msg = ipmi_alloc_smi_msg();
   if (!smi_info->curr_msg) {
    smi_info->si_state = 129;
    break;
   }
   start_getting_events(smi_info);
  } else {
   smi_info->si_state = 129;
  }
  break;
 }

 case 128:
 {
  unsigned char msg[4];

  smi_info->handlers->get_result(smi_info->si_sm, msg, 4);
  if (msg[2] != 0)
   dev_warn(smi_info->io.dev,
     "Could not set the global enables: 0x%x.\n",
     msg[2]);

  if (smi_info->supports_event_msg_buff) {
   smi_info->curr_msg = ipmi_alloc_smi_msg();
   if (!smi_info->curr_msg) {
    smi_info->si_state = 129;
    break;
   }
   start_getting_events(smi_info);
  } else {
   smi_info->si_state = 129;
  }
  break;
 }
 }
}
