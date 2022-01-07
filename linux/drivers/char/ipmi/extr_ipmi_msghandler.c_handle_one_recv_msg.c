
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ipmi_smi_msg {int* rsp; int rsp_size; int data_size; int* data; struct ipmi_recv_msg* user_data; int msgid; } ;
struct ipmi_smi {int channel_list; int channels_ready; int si_dev; scalar_t__ in_shutdown; } ;
struct TYPE_3__ {int* data; int data_len; } ;
struct ipmi_recv_msg {int* msg_data; TYPE_1__ msg; int recv_type; } ;
struct ipmi_channel {scalar_t__ medium; } ;
struct TYPE_4__ {struct ipmi_channel* c; } ;


 int IPMI_BUS_ERR ;



 int IPMI_CHANNEL_MEDIUM_OEM_MAX ;
 int IPMI_CHANNEL_MEDIUM_OEM_MIN ;
 void* IPMI_ERR_UNSPECIFIED ;
 int IPMI_GET_MSG_CMD ;
 int IPMI_LOST_ARBITRATION_ERR ;
 int IPMI_MAX_CHANNELS ;
 int IPMI_NAK_ON_WRITE_ERR ;
 int IPMI_NETFN_APP_REQUEST ;
 int IPMI_NODE_BUSY_ERR ;
 int IPMI_READ_EVENT_MSG_BUFFER_CMD ;
 int IPMI_RESPONSE_RESPONSE_TYPE ;
 int IPMI_SEND_MSG_CMD ;
 TYPE_2__* READ_ONCE (int ) ;
 int deliver_local_response (struct ipmi_smi*,struct ipmi_recv_msg*) ;
 int dev_warn (int ,char*,int,int,int,...) ;
 int handle_bmc_rsp (struct ipmi_smi*,struct ipmi_smi_msg*) ;
 int handle_ipmb_get_msg_cmd (struct ipmi_smi*,struct ipmi_smi_msg*) ;
 int handle_ipmb_get_msg_rsp (struct ipmi_smi*,struct ipmi_smi_msg*) ;
 int handle_lan_get_msg_cmd (struct ipmi_smi*,struct ipmi_smi_msg*) ;
 int handle_lan_get_msg_rsp (struct ipmi_smi*,struct ipmi_smi_msg*) ;
 int handle_oem_get_msg_cmd (struct ipmi_smi*,struct ipmi_smi_msg*) ;
 int handle_read_event_rsp (struct ipmi_smi*,struct ipmi_smi_msg*) ;
 int intf_err_seq (struct ipmi_smi*,int ,int) ;
 int intf_start_seq_timer (struct ipmi_smi*,int ) ;
 int ipmi_debug_msg (char*,int*,int) ;
 int ipmi_inc_stat (struct ipmi_smi*,int ) ;
 int sent_ipmb_command_errs ;
 int sent_lan_command_errs ;

__attribute__((used)) static int handle_one_recv_msg(struct ipmi_smi *intf,
          struct ipmi_smi_msg *msg)
{
 int requeue;
 int chan;

 ipmi_debug_msg("Recv:", msg->rsp, msg->rsp_size);

 if ((msg->data_size >= 2)
     && (msg->data[0] == (IPMI_NETFN_APP_REQUEST << 2))
     && (msg->data[1] == IPMI_SEND_MSG_CMD)
     && (msg->user_data == ((void*)0))) {

  if (intf->in_shutdown)
   goto free_msg;
  if ((msg->rsp_size >= 3) && (msg->rsp[2] != 0)
      && (msg->rsp[2] != IPMI_NODE_BUSY_ERR)
      && (msg->rsp[2] != IPMI_LOST_ARBITRATION_ERR)
      && (msg->rsp[2] != IPMI_BUS_ERR)
      && (msg->rsp[2] != IPMI_NAK_ON_WRITE_ERR)) {
   int ch = msg->rsp[3] & 0xf;
   struct ipmi_channel *chans;



   chans = READ_ONCE(intf->channel_list)->c;
   if ((chans[ch].medium == 130)
       || (chans[ch].medium == 129))
    ipmi_inc_stat(intf, sent_lan_command_errs);
   else
    ipmi_inc_stat(intf, sent_ipmb_command_errs);
   intf_err_seq(intf, msg->msgid, msg->rsp[2]);
  } else

   intf_start_seq_timer(intf, msg->msgid);
free_msg:
  requeue = 0;
  goto out;

 } else if (msg->rsp_size < 2) {

  dev_warn(intf->si_dev,
    "BMC returned too small a message for netfn %x cmd %x, got %d bytes\n",
    (msg->data[0] >> 2) | 1, msg->data[1], msg->rsp_size);


  msg->rsp[0] = msg->data[0] | (1 << 2);
  msg->rsp[1] = msg->data[1];
  msg->rsp[2] = IPMI_ERR_UNSPECIFIED;
  msg->rsp_size = 3;
 } else if (((msg->rsp[0] >> 2) != ((msg->data[0] >> 2) | 1))
     || (msg->rsp[1] != msg->data[1])) {




  dev_warn(intf->si_dev,
    "BMC returned incorrect response, expected netfn %x cmd %x, got netfn %x cmd %x\n",
    (msg->data[0] >> 2) | 1, msg->data[1],
    msg->rsp[0] >> 2, msg->rsp[1]);


  msg->rsp[0] = msg->data[0] | (1 << 2);
  msg->rsp[1] = msg->data[1];
  msg->rsp[2] = IPMI_ERR_UNSPECIFIED;
  msg->rsp_size = 3;
 }

 if ((msg->rsp[0] == ((IPMI_NETFN_APP_REQUEST|1) << 2))
     && (msg->rsp[1] == IPMI_SEND_MSG_CMD)
     && (msg->user_data != ((void*)0))) {




  struct ipmi_recv_msg *recv_msg = msg->user_data;

  requeue = 0;
  if (msg->rsp_size < 2)

   goto out;

  chan = msg->data[2] & 0x0f;
  if (chan >= IPMI_MAX_CHANNELS)

   goto out;

  if (!recv_msg)
   goto out;

  recv_msg->recv_type = IPMI_RESPONSE_RESPONSE_TYPE;
  recv_msg->msg.data = recv_msg->msg_data;
  recv_msg->msg.data_len = 1;
  recv_msg->msg_data[0] = msg->rsp[2];
  deliver_local_response(intf, recv_msg);
 } else if ((msg->rsp[0] == ((IPMI_NETFN_APP_REQUEST|1) << 2))
     && (msg->rsp[1] == IPMI_GET_MSG_CMD)) {
  struct ipmi_channel *chans;


  chan = msg->rsp[3] & 0xf;
  if (chan >= IPMI_MAX_CHANNELS) {

   requeue = 0;
   goto out;
  }







  if (!intf->channels_ready) {
   requeue = 0;
   goto out;
  }

  chans = READ_ONCE(intf->channel_list)->c;

  switch (chans[chan].medium) {
  case 128:
   if (msg->rsp[4] & 0x04) {




    requeue = handle_ipmb_get_msg_rsp(intf, msg);
   } else {




    requeue = handle_ipmb_get_msg_cmd(intf, msg);
   }
   break;

  case 130:
  case 129:
   if (msg->rsp[6] & 0x04) {




    requeue = handle_lan_get_msg_rsp(intf, msg);
   } else {




    requeue = handle_lan_get_msg_cmd(intf, msg);
   }
   break;

  default:


   if ((chans[chan].medium >= IPMI_CHANNEL_MEDIUM_OEM_MIN)
       && (chans[chan].medium
    <= IPMI_CHANNEL_MEDIUM_OEM_MAX)) {
    requeue = handle_oem_get_msg_cmd(intf, msg);
   } else {




    requeue = 0;
   }
  }

 } else if ((msg->rsp[0] == ((IPMI_NETFN_APP_REQUEST|1) << 2))
     && (msg->rsp[1] == IPMI_READ_EVENT_MSG_BUFFER_CMD)) {

  requeue = handle_read_event_rsp(intf, msg);
 } else {

  requeue = handle_bmc_rsp(intf, msg);
 }

 out:
 return requeue;
}
