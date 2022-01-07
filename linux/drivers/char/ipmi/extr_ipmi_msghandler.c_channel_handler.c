
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ipmi_smi {unsigned int curr_working_cset; int channels_ready; int curr_channel; int waitq; TYPE_3__* wchannels; TYPE_3__* channel_list; int si_dev; } ;
struct TYPE_5__ {scalar_t__ netfn; scalar_t__ cmd; int* data; int data_len; } ;
struct TYPE_4__ {scalar_t__ addr_type; } ;
struct ipmi_recv_msg {TYPE_2__ msg; TYPE_1__ addr; } ;
struct ipmi_channel {int medium; int protocol; } ;
struct TYPE_6__ {struct ipmi_channel* c; } ;


 int IPMI_CHANNEL_MEDIUM_IPMB ;
 int IPMI_CHANNEL_PROTOCOL_IPMB ;
 scalar_t__ IPMI_GET_CHANNEL_INFO_CMD ;
 int IPMI_INVALID_COMMAND_ERR ;
 int IPMI_MAX_CHANNELS ;
 scalar_t__ IPMI_NETFN_APP_RESPONSE ;
 scalar_t__ IPMI_SYSTEM_INTERFACE_ADDR_TYPE ;
 int dev_warn (int ,char*,int,int) ;
 int send_channel_info_cmd (struct ipmi_smi*,int) ;
 int wake_up (int *) ;

__attribute__((used)) static void
channel_handler(struct ipmi_smi *intf, struct ipmi_recv_msg *msg)
{
 int rv = 0;
 int ch;
 unsigned int set = intf->curr_working_cset;
 struct ipmi_channel *chans;

 if ((msg->addr.addr_type == IPMI_SYSTEM_INTERFACE_ADDR_TYPE)
     && (msg->msg.netfn == IPMI_NETFN_APP_RESPONSE)
     && (msg->msg.cmd == IPMI_GET_CHANNEL_INFO_CMD)) {

  if (msg->msg.data[0] != 0) {


   if (msg->msg.data[0] == IPMI_INVALID_COMMAND_ERR) {






    intf->wchannels[set].c[0].medium
     = IPMI_CHANNEL_MEDIUM_IPMB;
    intf->wchannels[set].c[0].protocol
     = IPMI_CHANNEL_PROTOCOL_IPMB;

    intf->channel_list = intf->wchannels + set;
    intf->channels_ready = 1;
    wake_up(&intf->waitq);
    goto out;
   }
   goto next_channel;
  }
  if (msg->msg.data_len < 4) {

   goto next_channel;
  }
  ch = intf->curr_channel;
  chans = intf->wchannels[set].c;
  chans[ch].medium = msg->msg.data[2] & 0x7f;
  chans[ch].protocol = msg->msg.data[3] & 0x1f;

 next_channel:
  intf->curr_channel++;
  if (intf->curr_channel >= IPMI_MAX_CHANNELS) {
   intf->channel_list = intf->wchannels + set;
   intf->channels_ready = 1;
   wake_up(&intf->waitq);
  } else {
   intf->channel_list = intf->wchannels + set;
   intf->channels_ready = 1;
   rv = send_channel_info_cmd(intf, intf->curr_channel);
  }

  if (rv) {

   dev_warn(intf->si_dev,
     "Error sending channel information for channel %d: %d\n",
     intf->curr_channel, rv);

   intf->channel_list = intf->wchannels + set;
   intf->channels_ready = 1;
   wake_up(&intf->waitq);
  }
 }
 out:
 return;
}
