
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct kcs_bmc {int lock; int running; } ;


 int ENODATA ;
 int KCS_STATUS_CMD_DAT ;
 int KCS_STATUS_IBF ;
 int kcs_bmc_handle_cmd (struct kcs_bmc*) ;
 int kcs_bmc_handle_data (struct kcs_bmc*) ;
 int kcs_force_abort (struct kcs_bmc*) ;
 int read_status (struct kcs_bmc*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int kcs_bmc_handle_event(struct kcs_bmc *kcs_bmc)
{
 unsigned long flags;
 int ret = -ENODATA;
 u8 status;

 spin_lock_irqsave(&kcs_bmc->lock, flags);

 status = read_status(kcs_bmc);
 if (status & KCS_STATUS_IBF) {
  if (!kcs_bmc->running)
   kcs_force_abort(kcs_bmc);
  else if (status & KCS_STATUS_CMD_DAT)
   kcs_bmc_handle_cmd(kcs_bmc);
  else
   kcs_bmc_handle_data(kcs_bmc);

  ret = 0;
 }

 spin_unlock_irqrestore(&kcs_bmc->lock, flags);

 return ret;
}
