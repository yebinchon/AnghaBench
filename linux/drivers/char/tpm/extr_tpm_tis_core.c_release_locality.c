
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpm_tis_data {int int_queue; } ;
struct tpm_chip {unsigned long timeout_a; int flags; int dev; } ;


 long ERESTARTSYS ;
 int TIF_SIGPENDING ;
 int TPM_ACCESS (int) ;
 int TPM_ACCESS_ACTIVE_LOCALITY ;
 int TPM_CHIP_FLAG_IRQ ;
 int TPM_TIMEOUT ;
 int clear_thread_flag (int ) ;
 int current ;
 struct tpm_tis_data* dev_get_drvdata (int *) ;
 scalar_t__ freezing (int ) ;
 unsigned long jiffies ;
 scalar_t__ locality_inactive (struct tpm_chip*,int) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 int tpm_msleep (int ) ;
 int tpm_tis_write8 (struct tpm_tis_data*,int ,int ) ;
 long wait_event_interruptible_timeout (int ,scalar_t__,unsigned long) ;

__attribute__((used)) static int release_locality(struct tpm_chip *chip, int l)
{
 struct tpm_tis_data *priv = dev_get_drvdata(&chip->dev);
 unsigned long stop, timeout;
 long rc;

 tpm_tis_write8(priv, TPM_ACCESS(l), TPM_ACCESS_ACTIVE_LOCALITY);

 stop = jiffies + chip->timeout_a;

 if (chip->flags & TPM_CHIP_FLAG_IRQ) {
again:
  timeout = stop - jiffies;
  if ((long)timeout <= 0)
   return -1;

  rc = wait_event_interruptible_timeout(priv->int_queue,
            (locality_inactive(chip, l)),
            timeout);

  if (rc > 0)
   return 0;

  if (rc == -ERESTARTSYS && freezing(current)) {
   clear_thread_flag(TIF_SIGPENDING);
   goto again;
  }
 } else {
  do {
   if (locality_inactive(chip, l))
    return 0;
   tpm_msleep(TPM_TIMEOUT);
  } while (time_before(jiffies, stop));
 }
 return -1;
}
