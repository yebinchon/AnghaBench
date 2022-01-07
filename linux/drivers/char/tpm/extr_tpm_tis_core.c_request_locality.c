
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpm_tis_data {int int_queue; } ;
struct tpm_chip {unsigned long timeout_a; int flags; int dev; } ;


 long ERESTARTSYS ;
 int TIF_SIGPENDING ;
 int TPM_ACCESS (int) ;
 int TPM_ACCESS_REQUEST_USE ;
 int TPM_CHIP_FLAG_IRQ ;
 int TPM_TIMEOUT ;
 scalar_t__ check_locality (struct tpm_chip*,int) ;
 int clear_thread_flag (int ) ;
 int current ;
 struct tpm_tis_data* dev_get_drvdata (int *) ;
 scalar_t__ freezing (int ) ;
 unsigned long jiffies ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 int tpm_msleep (int ) ;
 long tpm_tis_write8 (struct tpm_tis_data*,int ,int ) ;
 long wait_event_interruptible_timeout (int ,scalar_t__,unsigned long) ;

__attribute__((used)) static int request_locality(struct tpm_chip *chip, int l)
{
 struct tpm_tis_data *priv = dev_get_drvdata(&chip->dev);
 unsigned long stop, timeout;
 long rc;

 if (check_locality(chip, l))
  return l;

 rc = tpm_tis_write8(priv, TPM_ACCESS(l), TPM_ACCESS_REQUEST_USE);
 if (rc < 0)
  return rc;

 stop = jiffies + chip->timeout_a;

 if (chip->flags & TPM_CHIP_FLAG_IRQ) {
again:
  timeout = stop - jiffies;
  if ((long)timeout <= 0)
   return -1;
  rc = wait_event_interruptible_timeout(priv->int_queue,
            (check_locality
             (chip, l)),
            timeout);
  if (rc > 0)
   return l;
  if (rc == -ERESTARTSYS && freezing(current)) {
   clear_thread_flag(TIF_SIGPENDING);
   goto again;
  }
 } else {

  do {
   if (check_locality(chip, l))
    return l;
   tpm_msleep(TPM_TIMEOUT);
  } while (time_before(jiffies, stop));
 }
 return -1;
}
