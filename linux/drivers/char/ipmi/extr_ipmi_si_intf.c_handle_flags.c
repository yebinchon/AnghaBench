
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smi_info {int msg_flags; int si_state; scalar_t__ (* oem_data_avail_handler ) (struct smi_info*) ;void* curr_msg; int intf; } ;


 int EVENT_MSG_BUFFER_FULL ;
 int OEM_DATA_AVAIL ;
 int RECEIVE_MSG_AVAIL ;
 int SI_NORMAL ;
 int WDT_PRE_TIMEOUT_INT ;
 void* alloc_msg_handle_irq (struct smi_info*) ;
 int ipmi_smi_watchdog_pretimeout (int ) ;
 int smi_inc_stat (struct smi_info*,int ) ;
 int start_clear_flags (struct smi_info*) ;
 int start_getting_events (struct smi_info*) ;
 int start_getting_msg_queue (struct smi_info*) ;
 scalar_t__ stub1 (struct smi_info*) ;
 int watchdog_pretimeouts ;

__attribute__((used)) static void handle_flags(struct smi_info *smi_info)
{
retry:
 if (smi_info->msg_flags & WDT_PRE_TIMEOUT_INT) {

  smi_inc_stat(smi_info, watchdog_pretimeouts);

  start_clear_flags(smi_info);
  smi_info->msg_flags &= ~WDT_PRE_TIMEOUT_INT;
  ipmi_smi_watchdog_pretimeout(smi_info->intf);
 } else if (smi_info->msg_flags & RECEIVE_MSG_AVAIL) {

  smi_info->curr_msg = alloc_msg_handle_irq(smi_info);
  if (!smi_info->curr_msg)
   return;

  start_getting_msg_queue(smi_info);
 } else if (smi_info->msg_flags & EVENT_MSG_BUFFER_FULL) {

  smi_info->curr_msg = alloc_msg_handle_irq(smi_info);
  if (!smi_info->curr_msg)
   return;

  start_getting_events(smi_info);
 } else if (smi_info->msg_flags & OEM_DATA_AVAIL &&
     smi_info->oem_data_avail_handler) {
  if (smi_info->oem_data_avail_handler(smi_info))
   goto retry;
 } else
  smi_info->si_state = SI_NORMAL;
}
