
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct smi_info {TYPE_2__* curr_msg; int si_sm; TYPE_1__* handlers; TYPE_2__* waiting_msg; } ;
typedef enum si_sm_result { ____Placeholder_si_sm_result } si_sm_result ;
struct TYPE_4__ {int data_size; int data; } ;
struct TYPE_3__ {int (* start_transaction ) (int ,int ,int ) ;} ;


 int NOTIFY_STOP_MASK ;
 int SI_SM_CALL_WITHOUT_DELAY ;
 int SI_SM_IDLE ;
 int atomic_notifier_call_chain (int *,int ,struct smi_info*) ;
 int debug_timestamp (char*) ;
 int return_hosed_msg (struct smi_info*,int) ;
 int stub1 (int ,int ,int ) ;
 int xaction_notifier_list ;

__attribute__((used)) static enum si_sm_result start_next_msg(struct smi_info *smi_info)
{
 int rv;

 if (!smi_info->waiting_msg) {
  smi_info->curr_msg = ((void*)0);
  rv = SI_SM_IDLE;
 } else {
  int err;

  smi_info->curr_msg = smi_info->waiting_msg;
  smi_info->waiting_msg = ((void*)0);
  debug_timestamp("Start2");
  err = atomic_notifier_call_chain(&xaction_notifier_list,
    0, smi_info);
  if (err & NOTIFY_STOP_MASK) {
   rv = SI_SM_CALL_WITHOUT_DELAY;
   goto out;
  }
  err = smi_info->handlers->start_transaction(
   smi_info->si_sm,
   smi_info->curr_msg->data,
   smi_info->curr_msg->data_size);
  if (err)
   return_hosed_msg(smi_info, err);

  rv = SI_SM_CALL_WITHOUT_DELAY;
 }
out:
 return rv;
}
