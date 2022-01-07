
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_ipmi_msg {int dummy; } ;
struct ipmi_user {int refcount; } ;
struct ipmi_smi_msg {int data_size; int data; } ;
struct ipmi_smi {int handlers; scalar_t__ in_shutdown; } ;
struct ipmi_recv_msg {long msgid; struct kernel_ipmi_msg msg; struct ipmi_user* user; void* user_msg_data; } ;
struct ipmi_addr {scalar_t__ addr_type; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 scalar_t__ IPMI_SYSTEM_INTERFACE_ADDR_TYPE ;
 int i_ipmi_req_ipmb (struct ipmi_smi*,struct ipmi_addr*,long,struct kernel_ipmi_msg*,struct ipmi_smi_msg*,struct ipmi_recv_msg*,unsigned char,unsigned char,int,unsigned int) ;
 int i_ipmi_req_lan (struct ipmi_smi*,struct ipmi_addr*,long,struct kernel_ipmi_msg*,struct ipmi_smi_msg*,struct ipmi_recv_msg*,unsigned char,int,unsigned int) ;
 int i_ipmi_req_sysintf (struct ipmi_smi*,struct ipmi_addr*,long,struct kernel_ipmi_msg*,struct ipmi_smi_msg*,struct ipmi_recv_msg*,int,unsigned int) ;
 struct ipmi_recv_msg* ipmi_alloc_recv_msg () ;
 struct ipmi_smi_msg* ipmi_alloc_smi_msg () ;
 int ipmi_debug_msg (char*,int ,int ) ;
 int ipmi_free_recv_msg (struct ipmi_recv_msg*) ;
 int ipmi_free_smi_msg (struct ipmi_smi_msg*) ;
 int ipmi_inc_stat (struct ipmi_smi*,int ) ;
 scalar_t__ is_ipmb_addr (struct ipmi_addr*) ;
 scalar_t__ is_ipmb_bcast_addr (struct ipmi_addr*) ;
 scalar_t__ is_lan_addr (struct ipmi_addr*) ;
 int kref_get (int *) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int sent_invalid_commands ;
 int smi_send (struct ipmi_smi*,int ,struct ipmi_smi_msg*,int) ;

__attribute__((used)) static int i_ipmi_request(struct ipmi_user *user,
     struct ipmi_smi *intf,
     struct ipmi_addr *addr,
     long msgid,
     struct kernel_ipmi_msg *msg,
     void *user_msg_data,
     void *supplied_smi,
     struct ipmi_recv_msg *supplied_recv,
     int priority,
     unsigned char source_address,
     unsigned char source_lun,
     int retries,
     unsigned int retry_time_ms)
{
 struct ipmi_smi_msg *smi_msg;
 struct ipmi_recv_msg *recv_msg;
 int rv = 0;

 if (supplied_recv)
  recv_msg = supplied_recv;
 else {
  recv_msg = ipmi_alloc_recv_msg();
  if (recv_msg == ((void*)0)) {
   rv = -ENOMEM;
   goto out;
  }
 }
 recv_msg->user_msg_data = user_msg_data;

 if (supplied_smi)
  smi_msg = (struct ipmi_smi_msg *) supplied_smi;
 else {
  smi_msg = ipmi_alloc_smi_msg();
  if (smi_msg == ((void*)0)) {
   if (!supplied_recv)
    ipmi_free_recv_msg(recv_msg);
   rv = -ENOMEM;
   goto out;
  }
 }

 rcu_read_lock();
 if (intf->in_shutdown) {
  rv = -ENODEV;
  goto out_err;
 }

 recv_msg->user = user;
 if (user)

  kref_get(&user->refcount);
 recv_msg->msgid = msgid;




 recv_msg->msg = *msg;

 if (addr->addr_type == IPMI_SYSTEM_INTERFACE_ADDR_TYPE) {
  rv = i_ipmi_req_sysintf(intf, addr, msgid, msg, smi_msg,
     recv_msg, retries, retry_time_ms);
 } else if (is_ipmb_addr(addr) || is_ipmb_bcast_addr(addr)) {
  rv = i_ipmi_req_ipmb(intf, addr, msgid, msg, smi_msg, recv_msg,
         source_address, source_lun,
         retries, retry_time_ms);
 } else if (is_lan_addr(addr)) {
  rv = i_ipmi_req_lan(intf, addr, msgid, msg, smi_msg, recv_msg,
        source_lun, retries, retry_time_ms);
 } else {

  ipmi_inc_stat(intf, sent_invalid_commands);
  rv = -EINVAL;
 }

 if (rv) {
out_err:
  ipmi_free_smi_msg(smi_msg);
  ipmi_free_recv_msg(recv_msg);
 } else {
  ipmi_debug_msg("Send", smi_msg->data, smi_msg->data_size);

  smi_send(intf, intf->handlers, smi_msg, priority);
 }
 rcu_read_unlock();

out:
 return rv;
}
