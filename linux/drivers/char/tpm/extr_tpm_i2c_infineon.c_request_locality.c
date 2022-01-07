
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tpm_chip {unsigned long timeout_a; } ;


 int ETIME ;
 int TPM_ACCESS (int) ;
 int TPM_ACCESS_REQUEST_USE ;
 int TPM_TIMEOUT_US_HI ;
 int TPM_TIMEOUT_US_LOW ;
 scalar_t__ check_locality (struct tpm_chip*,int) ;
 int iic_tpm_write (int ,int *,int) ;
 unsigned long jiffies ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 int usleep_range (int ,int ) ;

__attribute__((used)) static int request_locality(struct tpm_chip *chip, int loc)
{
 unsigned long stop;
 u8 buf = TPM_ACCESS_REQUEST_USE;

 if (check_locality(chip, loc))
  return loc;

 iic_tpm_write(TPM_ACCESS(loc), &buf, 1);


 stop = jiffies + chip->timeout_a;
 do {
  if (check_locality(chip, loc))
   return loc;
  usleep_range(TPM_TIMEOUT_US_LOW, TPM_TIMEOUT_US_HI);
 } while (time_before(jiffies, stop));

 return -ETIME;
}
