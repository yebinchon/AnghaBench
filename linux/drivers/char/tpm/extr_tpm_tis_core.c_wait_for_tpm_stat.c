
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wait_queue_head_t ;
typedef int u8 ;
struct tpm_chip {int flags; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* status ) (struct tpm_chip*) ;} ;


 int ECANCELED ;
 long ERESTARTSYS ;
 int ETIME ;
 int TIF_SIGPENDING ;
 int TPM_CHIP_FLAG_IRQ ;
 int TPM_TIMEOUT_USECS_MAX ;
 int TPM_TIMEOUT_USECS_MIN ;
 int clear_thread_flag (int ) ;
 int current ;
 scalar_t__ freezing (int ) ;
 unsigned long jiffies ;
 int stub1 (struct tpm_chip*) ;
 int stub2 (struct tpm_chip*) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 int usleep_range (int ,int ) ;
 long wait_event_interruptible_timeout (int ,int ,unsigned long) ;
 int wait_for_tpm_stat_cond (struct tpm_chip*,int,int,int*) ;

__attribute__((used)) static int wait_for_tpm_stat(struct tpm_chip *chip, u8 mask,
  unsigned long timeout, wait_queue_head_t *queue,
  bool check_cancel)
{
 unsigned long stop;
 long rc;
 u8 status;
 bool canceled = 0;


 status = chip->ops->status(chip);
 if ((status & mask) == mask)
  return 0;

 stop = jiffies + timeout;

 if (chip->flags & TPM_CHIP_FLAG_IRQ) {
again:
  timeout = stop - jiffies;
  if ((long)timeout <= 0)
   return -ETIME;
  rc = wait_event_interruptible_timeout(*queue,
   wait_for_tpm_stat_cond(chip, mask, check_cancel,
            &canceled),
   timeout);
  if (rc > 0) {
   if (canceled)
    return -ECANCELED;
   return 0;
  }
  if (rc == -ERESTARTSYS && freezing(current)) {
   clear_thread_flag(TIF_SIGPENDING);
   goto again;
  }
 } else {
  do {
   usleep_range(TPM_TIMEOUT_USECS_MIN,
         TPM_TIMEOUT_USECS_MAX);
   status = chip->ops->status(chip);
   if ((status & mask) == mask)
    return 0;
  } while (time_before(jiffies, stop));
 }
 return -ETIME;
}
