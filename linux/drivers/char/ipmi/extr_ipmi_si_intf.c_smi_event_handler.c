
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ irq; } ;
struct smi_info {scalar_t__ si_state; int got_attn; int timer_running; int si_timer; int * curr_msg; TYPE_2__ io; scalar_t__ supports_event_msg_buff; int req_events; int si_sm; TYPE_1__* handlers; } ;
typedef enum si_sm_result { ____Placeholder_si_sm_result } si_sm_result ;
struct TYPE_3__ {int (* event ) (int ,int) ;} ;


 int IPMI_ERR_UNSPECIFIED ;
 unsigned char IPMI_GET_MSG_FLAGS_CMD ;
 int IPMI_NETFN_APP_REQUEST ;
 scalar_t__ SI_GETTING_FLAGS ;
 scalar_t__ SI_NORMAL ;
 int SI_SM_ATTN ;
 int SI_SM_CALL_WITHOUT_DELAY ;
 int SI_SM_HOSED ;
 int SI_SM_IDLE ;
 int SI_SM_TRANSACTION_COMPLETE ;
 int * alloc_msg_handle_irq (struct smi_info*) ;
 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int attentions ;
 int complete_transactions ;
 scalar_t__ del_timer (int *) ;
 int handle_transaction_done (struct smi_info*) ;
 int hosed_count ;
 int idles ;
 int return_hosed_msg (struct smi_info*,int ) ;
 int smi_inc_stat (struct smi_info*,int ) ;
 int start_check_enables (struct smi_info*) ;
 int start_getting_events (struct smi_info*) ;
 int start_new_msg (struct smi_info*,unsigned char*,int) ;
 int start_next_msg (struct smi_info*) ;
 int stub1 (int ,int) ;
 int stub2 (int ,int) ;

__attribute__((used)) static enum si_sm_result smi_event_handler(struct smi_info *smi_info,
        int time)
{
 enum si_sm_result si_sm_result;

restart:
 si_sm_result = smi_info->handlers->event(smi_info->si_sm, time);
 time = 0;
 while (si_sm_result == SI_SM_CALL_WITHOUT_DELAY)
  si_sm_result = smi_info->handlers->event(smi_info->si_sm, 0);

 if (si_sm_result == SI_SM_TRANSACTION_COMPLETE) {
  smi_inc_stat(smi_info, complete_transactions);

  handle_transaction_done(smi_info);
  goto restart;
 } else if (si_sm_result == SI_SM_HOSED) {
  smi_inc_stat(smi_info, hosed_count);





  smi_info->si_state = SI_NORMAL;
  if (smi_info->curr_msg != ((void*)0)) {





   return_hosed_msg(smi_info, IPMI_ERR_UNSPECIFIED);
  }
  goto restart;
 }





 if (si_sm_result == SI_SM_ATTN || smi_info->got_attn) {
  unsigned char msg[2];

  if (smi_info->si_state != SI_NORMAL) {




   smi_info->got_attn = 1;
  } else {
   smi_info->got_attn = 0;
   smi_inc_stat(smi_info, attentions);
   msg[0] = (IPMI_NETFN_APP_REQUEST << 2);
   msg[1] = IPMI_GET_MSG_FLAGS_CMD;

   start_new_msg(smi_info, msg, 2);
   smi_info->si_state = SI_GETTING_FLAGS;
   goto restart;
  }
 }


 if (si_sm_result == SI_SM_IDLE) {
  smi_inc_stat(smi_info, idles);

  si_sm_result = start_next_msg(smi_info);
  if (si_sm_result != SI_SM_IDLE)
   goto restart;
 }

 if ((si_sm_result == SI_SM_IDLE)
     && (atomic_read(&smi_info->req_events))) {




  atomic_set(&smi_info->req_events, 0);







  if (smi_info->supports_event_msg_buff || smi_info->io.irq) {
   start_check_enables(smi_info);
  } else {
   smi_info->curr_msg = alloc_msg_handle_irq(smi_info);
   if (!smi_info->curr_msg)
    goto out;

   start_getting_events(smi_info);
  }
  goto restart;
 }

 if (si_sm_result == SI_SM_IDLE && smi_info->timer_running) {

  if (del_timer(&smi_info->si_timer))
   smi_info->timer_running = 0;
 }

out:
 return si_sm_result;
}
