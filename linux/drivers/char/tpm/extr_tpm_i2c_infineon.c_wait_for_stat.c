
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tpm_chip {int dummy; } ;


 int ETIME ;
 int TPM_TIMEOUT_US_HI ;
 int TPM_TIMEOUT_US_LOW ;
 unsigned long jiffies ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 int tpm_tis_i2c_status (struct tpm_chip*) ;
 int usleep_range (int ,int ) ;

__attribute__((used)) static int wait_for_stat(struct tpm_chip *chip, u8 mask, unsigned long timeout,
    int *status)
{
 unsigned long stop;


 *status = tpm_tis_i2c_status(chip);
 if ((*status != 0xFF) && (*status & mask) == mask)
  return 0;

 stop = jiffies + timeout;
 do {

  usleep_range(TPM_TIMEOUT_US_LOW, TPM_TIMEOUT_US_HI);
  *status = tpm_tis_i2c_status(chip);
  if ((*status & mask) == mask)
   return 0;

 } while (time_before(jiffies, stop));

 return -ETIME;
}
