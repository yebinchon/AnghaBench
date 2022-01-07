
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wait_queue_head_t ;
typedef int u8 ;
typedef scalar_t__ u32 ;
struct tpm_chip {int flags; TYPE_1__* ops; int dev; } ;
struct st33zp24_dev {scalar_t__ intrs; int irq; } ;
struct TYPE_2__ {int (* status ) (struct tpm_chip*) ;} ;


 int ECANCELED ;
 int ERESTARTSYS ;
 int ETIME ;
 int TIF_SIGPENDING ;
 int TPM_CHIP_FLAG_IRQ ;
 int TPM_TIMEOUT ;
 int clear_interruption (struct st33zp24_dev*) ;
 int clear_thread_flag (int ) ;
 int current ;
 struct st33zp24_dev* dev_get_drvdata (int *) ;
 int disable_irq_nosync (int ) ;
 int enable_irq (int ) ;
 scalar_t__ freezing (int ) ;
 unsigned long jiffies ;
 int msleep (int ) ;
 int st33zp24_status (struct tpm_chip*) ;
 int stub1 (struct tpm_chip*) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 int wait_event_interruptible_timeout (int ,int,unsigned long) ;
 int wait_for_tpm_stat_cond (struct tpm_chip*,int,int,int*) ;

__attribute__((used)) static int wait_for_stat(struct tpm_chip *chip, u8 mask, unsigned long timeout,
   wait_queue_head_t *queue, bool check_cancel)
{
 struct st33zp24_dev *tpm_dev = dev_get_drvdata(&chip->dev);
 unsigned long stop;
 int ret = 0;
 bool canceled = 0;
 bool condition;
 u32 cur_intrs;
 u8 status;


 status = st33zp24_status(chip);
 if ((status & mask) == mask)
  return 0;

 stop = jiffies + timeout;

 if (chip->flags & TPM_CHIP_FLAG_IRQ) {
  cur_intrs = tpm_dev->intrs;
  clear_interruption(tpm_dev);
  enable_irq(tpm_dev->irq);

  do {
   if (ret == -ERESTARTSYS && freezing(current))
    clear_thread_flag(TIF_SIGPENDING);

   timeout = stop - jiffies;
   if ((long) timeout <= 0)
    return -1;

   ret = wait_event_interruptible_timeout(*queue,
      cur_intrs != tpm_dev->intrs,
      timeout);
   clear_interruption(tpm_dev);
   condition = wait_for_tpm_stat_cond(chip, mask,
      check_cancel, &canceled);
   if (ret >= 0 && condition) {
    if (canceled)
     return -ECANCELED;
    return 0;
   }
  } while (ret == -ERESTARTSYS && freezing(current));

  disable_irq_nosync(tpm_dev->irq);

 } else {
  do {
   msleep(TPM_TIMEOUT);
   status = chip->ops->status(chip);
   if ((status & mask) == mask)
    return 0;
  } while (time_before(jiffies, stop));
 }

 return -ETIME;
}
