
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_table {unsigned long timeout; scalar_t__ retries_left; struct ipmi_recv_msg* recv_msg; int seqid; scalar_t__ broadcast; scalar_t__ inuse; } ;
struct list_head {int dummy; } ;
struct ipmi_smi_msg {int dummy; } ;
struct ipmi_smi {int seq_lock; scalar_t__ handlers; scalar_t__ in_shutdown; } ;
struct ipmi_recv_msg {int addr; int link; } ;


 int IPMI_WATCH_MASK_CHECK_MESSAGES ;
 unsigned long MAX_MSG_TIMEOUT ;
 int dropped_rexmit_ipmb_commands ;
 int dropped_rexmit_lan_commands ;
 int ipmi_free_smi_msg (struct ipmi_smi_msg*) ;
 int ipmi_inc_stat (struct ipmi_smi*,int ) ;
 scalar_t__ is_lan_addr (int *) ;
 int list_add_tail (int *,struct list_head*) ;
 int retransmitted_ipmb_commands ;
 int retransmitted_lan_commands ;
 struct ipmi_smi_msg* smi_from_recv_msg (struct ipmi_smi*,struct ipmi_recv_msg*,int,int ) ;
 int smi_remove_watch (struct ipmi_smi*,int ) ;
 int smi_send (struct ipmi_smi*,scalar_t__,struct ipmi_smi_msg*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int timed_out_ipmb_broadcasts ;
 int timed_out_ipmb_commands ;
 int timed_out_lan_commands ;

__attribute__((used)) static void check_msg_timeout(struct ipmi_smi *intf, struct seq_table *ent,
         struct list_head *timeouts,
         unsigned long timeout_period,
         int slot, unsigned long *flags,
         bool *need_timer)
{
 struct ipmi_recv_msg *msg;

 if (intf->in_shutdown)
  return;

 if (!ent->inuse)
  return;

 if (timeout_period < ent->timeout) {
  ent->timeout -= timeout_period;
  *need_timer = 1;
  return;
 }

 if (ent->retries_left == 0) {

  ent->inuse = 0;
  smi_remove_watch(intf, IPMI_WATCH_MASK_CHECK_MESSAGES);
  msg = ent->recv_msg;
  list_add_tail(&msg->link, timeouts);
  if (ent->broadcast)
   ipmi_inc_stat(intf, timed_out_ipmb_broadcasts);
  else if (is_lan_addr(&ent->recv_msg->addr))
   ipmi_inc_stat(intf, timed_out_lan_commands);
  else
   ipmi_inc_stat(intf, timed_out_ipmb_commands);
 } else {
  struct ipmi_smi_msg *smi_msg;


  *need_timer = 1;





  ent->timeout = MAX_MSG_TIMEOUT;
  ent->retries_left--;
  smi_msg = smi_from_recv_msg(intf, ent->recv_msg, slot,
         ent->seqid);
  if (!smi_msg) {
   if (is_lan_addr(&ent->recv_msg->addr))
    ipmi_inc_stat(intf,
           dropped_rexmit_lan_commands);
   else
    ipmi_inc_stat(intf,
           dropped_rexmit_ipmb_commands);
   return;
  }

  spin_unlock_irqrestore(&intf->seq_lock, *flags);
  if (intf->handlers) {
   if (is_lan_addr(&ent->recv_msg->addr))
    ipmi_inc_stat(intf,
           retransmitted_lan_commands);
   else
    ipmi_inc_stat(intf,
           retransmitted_ipmb_commands);

   smi_send(intf, intf->handlers, smi_msg, 0);
  } else
   ipmi_free_smi_msg(smi_msg);

  spin_lock_irqsave(&intf->seq_lock, *flags);
 }
}
