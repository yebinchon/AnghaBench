
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ipmi_user {int refcount; } ;
struct ipmi_smi_msg {int rsp_size; int* rsp; int* data; int data_size; } ;
struct ipmi_smi {int handlers; int in_shutdown; TYPE_1__* addrinfo; } ;
struct TYPE_4__ {int netfn; int cmd; int data_len; int data; } ;
struct ipmi_recv_msg {int msgid; int msg_data; TYPE_2__ msg; int recv_type; struct ipmi_user* user; int addr; } ;
struct ipmi_ipmb_addr {int slave_addr; int lun; int channel; int addr_type; } ;
struct cmd_rcvr {struct ipmi_user* user; } ;
struct TYPE_3__ {unsigned char address; } ;


 int IPMI_CMD_RECV_TYPE ;
 int IPMI_INVALID_CMD_COMPLETION_CODE ;
 int IPMI_IPMB_ADDR_TYPE ;
 int IPMI_NETFN_APP_REQUEST ;
 int IPMI_SEND_MSG_CMD ;
 scalar_t__ deliver_response (struct ipmi_smi*,struct ipmi_recv_msg*) ;
 struct cmd_rcvr* find_cmd_rcvr (struct ipmi_smi*,unsigned char,unsigned char,unsigned char) ;
 int free_user ;
 int handled_commands ;
 int invalid_commands ;
 void* ipmb_checksum (unsigned char*,int) ;
 struct ipmi_recv_msg* ipmi_alloc_recv_msg () ;
 int ipmi_debug_msg (char*,unsigned char*,int) ;
 int ipmi_inc_stat (struct ipmi_smi*,int ) ;
 int kref_get (int *) ;
 int kref_put (int *,int ) ;
 int memcpy (int ,int*,int) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int smi_send (struct ipmi_smi*,int ,struct ipmi_smi_msg*,int ) ;
 int unhandled_commands ;

__attribute__((used)) static int handle_ipmb_get_msg_cmd(struct ipmi_smi *intf,
       struct ipmi_smi_msg *msg)
{
 struct cmd_rcvr *rcvr;
 int rv = 0;
 unsigned char netfn;
 unsigned char cmd;
 unsigned char chan;
 struct ipmi_user *user = ((void*)0);
 struct ipmi_ipmb_addr *ipmb_addr;
 struct ipmi_recv_msg *recv_msg;

 if (msg->rsp_size < 10) {

  ipmi_inc_stat(intf, invalid_commands);
  return 0;
 }

 if (msg->rsp[2] != 0) {

  return 0;
 }

 netfn = msg->rsp[4] >> 2;
 cmd = msg->rsp[8];
 chan = msg->rsp[3] & 0xf;

 rcu_read_lock();
 rcvr = find_cmd_rcvr(intf, netfn, cmd, chan);
 if (rcvr) {
  user = rcvr->user;
  kref_get(&user->refcount);
 } else
  user = ((void*)0);
 rcu_read_unlock();

 if (user == ((void*)0)) {

  ipmi_inc_stat(intf, unhandled_commands);

  msg->data[0] = (IPMI_NETFN_APP_REQUEST << 2);
  msg->data[1] = IPMI_SEND_MSG_CMD;
  msg->data[2] = msg->rsp[3];
  msg->data[3] = msg->rsp[6];
  msg->data[4] = ((netfn + 1) << 2) | (msg->rsp[7] & 0x3);
  msg->data[5] = ipmb_checksum(&msg->data[3], 2);
  msg->data[6] = intf->addrinfo[msg->rsp[3] & 0xf].address;

  msg->data[7] = (msg->rsp[7] & 0xfc) | (msg->rsp[4] & 0x3);
  msg->data[8] = msg->rsp[8];
  msg->data[9] = IPMI_INVALID_CMD_COMPLETION_CODE;
  msg->data[10] = ipmb_checksum(&msg->data[6], 4);
  msg->data_size = 11;

  ipmi_debug_msg("Invalid command:", msg->data, msg->data_size);

  rcu_read_lock();
  if (!intf->in_shutdown) {
   smi_send(intf, intf->handlers, msg, 0);





   rv = -1;
  }
  rcu_read_unlock();
 } else {
  recv_msg = ipmi_alloc_recv_msg();
  if (!recv_msg) {





   rv = 1;
   kref_put(&user->refcount, free_user);
  } else {

   ipmb_addr = (struct ipmi_ipmb_addr *) &recv_msg->addr;
   ipmb_addr->addr_type = IPMI_IPMB_ADDR_TYPE;
   ipmb_addr->slave_addr = msg->rsp[6];
   ipmb_addr->lun = msg->rsp[7] & 3;
   ipmb_addr->channel = msg->rsp[3] & 0xf;





   recv_msg->user = user;
   recv_msg->recv_type = IPMI_CMD_RECV_TYPE;
   recv_msg->msgid = msg->rsp[7] >> 2;
   recv_msg->msg.netfn = msg->rsp[4] >> 2;
   recv_msg->msg.cmd = msg->rsp[8];
   recv_msg->msg.data = recv_msg->msg_data;





   recv_msg->msg.data_len = msg->rsp_size - 10;
   memcpy(recv_msg->msg_data, &msg->rsp[9],
          msg->rsp_size - 10);
   if (deliver_response(intf, recv_msg))
    ipmi_inc_stat(intf, unhandled_commands);
   else
    ipmi_inc_stat(intf, handled_commands);
  }
 }

 return rv;
}
