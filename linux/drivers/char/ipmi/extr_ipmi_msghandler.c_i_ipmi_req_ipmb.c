
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kernel_ipmi_msg {scalar_t__ data_len; } ;
struct ipmi_smi_msg {int data_size; struct ipmi_ipmb_addr* data; struct ipmi_recv_msg* user_data; } ;
struct ipmi_smi {int seq_lock; scalar_t__ ipmb_maintenance_mode_timeout; int channel_list; } ;
struct TYPE_3__ {int netfn; int data_len; int * data; } ;
struct ipmi_recv_msg {TYPE_1__ msg; int * msg_data; int addr; } ;
struct ipmi_ipmb_addr {int lun; } ;
struct ipmi_channel {scalar_t__ medium; } ;
struct ipmi_addr {size_t channel; scalar_t__ addr_type; } ;
struct TYPE_4__ {struct ipmi_channel* c; } ;


 int EINVAL ;
 int EMSGSIZE ;
 scalar_t__ IPMI_CHANNEL_MEDIUM_IPMB ;
 scalar_t__ IPMI_IPMB_ADDR_TYPE ;
 scalar_t__ IPMI_IPMB_BROADCAST_ADDR_TYPE ;
 size_t IPMI_MAX_CHANNELS ;
 scalar_t__ IPMI_MAX_MSG_LENGTH ;
 TYPE_2__* READ_ONCE (int ) ;
 long STORE_SEQ_IN_MSGID (unsigned char,long) ;
 unsigned int default_maintenance_retry_ms ;
 int format_ipmb_msg (struct ipmi_smi_msg*,struct kernel_ipmi_msg*,struct ipmi_ipmb_addr*,long,unsigned char,int,unsigned char,unsigned char) ;
 int intf_next_seq (struct ipmi_smi*,struct ipmi_recv_msg*,unsigned int,int,int,unsigned char*,long*) ;
 int ipmi_inc_stat (struct ipmi_smi*,int ) ;
 scalar_t__ is_maintenance_mode_cmd (struct kernel_ipmi_msg*) ;
 scalar_t__ maintenance_mode_timeout_ms ;
 int memcpy (int *,struct ipmi_ipmb_addr*,int) ;
 int sent_invalid_commands ;
 int sent_ipmb_commands ;
 int sent_ipmb_responses ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int i_ipmi_req_ipmb(struct ipmi_smi *intf,
      struct ipmi_addr *addr,
      long msgid,
      struct kernel_ipmi_msg *msg,
      struct ipmi_smi_msg *smi_msg,
      struct ipmi_recv_msg *recv_msg,
      unsigned char source_address,
      unsigned char source_lun,
      int retries,
      unsigned int retry_time_ms)
{
 struct ipmi_ipmb_addr *ipmb_addr;
 unsigned char ipmb_seq;
 long seqid;
 int broadcast = 0;
 struct ipmi_channel *chans;
 int rv = 0;

 if (addr->channel >= IPMI_MAX_CHANNELS) {
  ipmi_inc_stat(intf, sent_invalid_commands);
  return -EINVAL;
 }

 chans = READ_ONCE(intf->channel_list)->c;

 if (chans[addr->channel].medium != IPMI_CHANNEL_MEDIUM_IPMB) {
  ipmi_inc_stat(intf, sent_invalid_commands);
  return -EINVAL;
 }

 if (addr->addr_type == IPMI_IPMB_BROADCAST_ADDR_TYPE) {





  addr->addr_type = IPMI_IPMB_ADDR_TYPE;
  broadcast = 1;
  retries = 0;
 }





 if ((msg->data_len + 10 + broadcast) > IPMI_MAX_MSG_LENGTH) {
  ipmi_inc_stat(intf, sent_invalid_commands);
  return -EMSGSIZE;
 }

 ipmb_addr = (struct ipmi_ipmb_addr *) addr;
 if (ipmb_addr->lun > 3) {
  ipmi_inc_stat(intf, sent_invalid_commands);
  return -EINVAL;
 }

 memcpy(&recv_msg->addr, ipmb_addr, sizeof(*ipmb_addr));

 if (recv_msg->msg.netfn & 0x1) {




  ipmi_inc_stat(intf, sent_ipmb_responses);
  format_ipmb_msg(smi_msg, msg, ipmb_addr, msgid,
    msgid, broadcast,
    source_address, source_lun);





  smi_msg->user_data = recv_msg;
 } else {

  unsigned long flags;

  spin_lock_irqsave(&intf->seq_lock, flags);

  if (is_maintenance_mode_cmd(msg))
   intf->ipmb_maintenance_mode_timeout =
    maintenance_mode_timeout_ms;

  if (intf->ipmb_maintenance_mode_timeout && retry_time_ms == 0)

   retry_time_ms = default_maintenance_retry_ms;





  rv = intf_next_seq(intf,
       recv_msg,
       retry_time_ms,
       retries,
       broadcast,
       &ipmb_seq,
       &seqid);
  if (rv)




   goto out_err;

  ipmi_inc_stat(intf, sent_ipmb_commands);






  format_ipmb_msg(smi_msg, msg, ipmb_addr,
    STORE_SEQ_IN_MSGID(ipmb_seq, seqid),
    ipmb_seq, broadcast,
    source_address, source_lun);





  memcpy(recv_msg->msg_data, smi_msg->data,
         smi_msg->data_size);
  recv_msg->msg.data = recv_msg->msg_data;
  recv_msg->msg.data_len = smi_msg->data_size;
out_err:
  spin_unlock_irqrestore(&intf->seq_lock, flags);
 }

 return rv;
}
