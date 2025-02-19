
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_ipmi_msg {int netfn; scalar_t__ cmd; int data_len; struct ipmi_system_interface_addr* data; } ;
struct ipmi_system_interface_addr {int lun; } ;
struct ipmi_smi_msg {int* data; long msgid; int data_size; struct ipmi_recv_msg* user_data; } ;
struct ipmi_smi {int maintenance_mode_enable; int maintenance_mode_lock; int maintenance_mode; int auto_maintenance_timeout; } ;
struct ipmi_recv_msg {int addr; } ;
struct ipmi_addr {int dummy; } ;


 int EINVAL ;
 int EMSGSIZE ;
 scalar_t__ IPMI_GET_MSG_CMD ;
 int IPMI_MAX_MSG_LENGTH ;
 int IPMI_NETFN_APP_REQUEST ;
 scalar_t__ IPMI_READ_EVENT_MSG_BUFFER_CMD ;
 scalar_t__ IPMI_SEND_MSG_CMD ;
 int ipmi_inc_stat (struct ipmi_smi*,int ) ;
 scalar_t__ is_maintenance_mode_cmd (struct kernel_ipmi_msg*) ;
 int maintenance_mode_timeout_ms ;
 int maintenance_mode_update (struct ipmi_smi*) ;
 int memcpy (int*,struct ipmi_system_interface_addr*,int) ;
 int sent_invalid_commands ;
 int sent_local_commands ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int i_ipmi_req_sysintf(struct ipmi_smi *intf,
         struct ipmi_addr *addr,
         long msgid,
         struct kernel_ipmi_msg *msg,
         struct ipmi_smi_msg *smi_msg,
         struct ipmi_recv_msg *recv_msg,
         int retries,
         unsigned int retry_time_ms)
{
 struct ipmi_system_interface_addr *smi_addr;

 if (msg->netfn & 1)

  return -EINVAL;

 smi_addr = (struct ipmi_system_interface_addr *) addr;
 if (smi_addr->lun > 3) {
  ipmi_inc_stat(intf, sent_invalid_commands);
  return -EINVAL;
 }

 memcpy(&recv_msg->addr, smi_addr, sizeof(*smi_addr));

 if ((msg->netfn == IPMI_NETFN_APP_REQUEST)
     && ((msg->cmd == IPMI_SEND_MSG_CMD)
  || (msg->cmd == IPMI_GET_MSG_CMD)
  || (msg->cmd == IPMI_READ_EVENT_MSG_BUFFER_CMD))) {




  ipmi_inc_stat(intf, sent_invalid_commands);
  return -EINVAL;
 }

 if (is_maintenance_mode_cmd(msg)) {
  unsigned long flags;

  spin_lock_irqsave(&intf->maintenance_mode_lock, flags);
  intf->auto_maintenance_timeout
   = maintenance_mode_timeout_ms;
  if (!intf->maintenance_mode
      && !intf->maintenance_mode_enable) {
   intf->maintenance_mode_enable = 1;
   maintenance_mode_update(intf);
  }
  spin_unlock_irqrestore(&intf->maintenance_mode_lock,
           flags);
 }

 if (msg->data_len + 2 > IPMI_MAX_MSG_LENGTH) {
  ipmi_inc_stat(intf, sent_invalid_commands);
  return -EMSGSIZE;
 }

 smi_msg->data[0] = (msg->netfn << 2) | (smi_addr->lun & 0x3);
 smi_msg->data[1] = msg->cmd;
 smi_msg->msgid = msgid;
 smi_msg->user_data = recv_msg;
 if (msg->data_len > 0)
  memcpy(&smi_msg->data[2], msg->data, msg->data_len);
 smi_msg->data_size = msg->data_len + 2;
 ipmi_inc_stat(intf, sent_local_commands);

 return 0;
}
