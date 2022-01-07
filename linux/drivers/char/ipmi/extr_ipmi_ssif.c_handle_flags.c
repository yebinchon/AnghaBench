
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssif_info {int msg_flags; int ssif_state; int intf; } ;


 int EVENT_MSG_BUFFER_FULL ;
 int RECEIVE_MSG_AVAIL ;
 int SSIF_NORMAL ;
 int WDT_PRE_TIMEOUT_INT ;
 int ipmi_smi_watchdog_pretimeout (int ) ;
 int ipmi_ssif_unlock_cond (struct ssif_info*,unsigned long*) ;
 int ssif_inc_stat (struct ssif_info*,int ) ;
 int start_clear_flags (struct ssif_info*,unsigned long*) ;
 int start_event_fetch (struct ssif_info*,unsigned long*) ;
 int start_recv_msg_fetch (struct ssif_info*,unsigned long*) ;
 int watchdog_pretimeouts ;

__attribute__((used)) static void handle_flags(struct ssif_info *ssif_info, unsigned long *flags)
{
 if (ssif_info->msg_flags & WDT_PRE_TIMEOUT_INT) {

  ssif_inc_stat(ssif_info, watchdog_pretimeouts);
  start_clear_flags(ssif_info, flags);
  ipmi_smi_watchdog_pretimeout(ssif_info->intf);
 } else if (ssif_info->msg_flags & RECEIVE_MSG_AVAIL)

  start_recv_msg_fetch(ssif_info, flags);
 else if (ssif_info->msg_flags & EVENT_MSG_BUFFER_FULL)

  start_event_fetch(ssif_info, flags);
 else {
  ssif_info->ssif_state = SSIF_NORMAL;
  ipmi_ssif_unlock_cond(ssif_info, flags);
 }
}
