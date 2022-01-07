
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct tpm_chip {unsigned long timeout_d; } ;
typedef int ssize_t ;
struct TYPE_2__ {int locality; } ;


 int EBUSY ;
 scalar_t__ TPM_STS (int ) ;
 int TPM_TIMEOUT_US_HI ;
 int TPM_TIMEOUT_US_LOW ;
 scalar_t__ iic_tpm_read (scalar_t__,int*,int) ;
 unsigned long jiffies ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 TYPE_1__ tpm_dev ;
 int usleep_range (int ,int ) ;

__attribute__((used)) static ssize_t get_burstcount(struct tpm_chip *chip)
{
 unsigned long stop;
 ssize_t burstcnt;
 u8 buf[3];



 stop = jiffies + chip->timeout_d;
 do {

  if (iic_tpm_read(TPM_STS(tpm_dev.locality)+1, buf, 3) < 0)
   burstcnt = 0;
  else
   burstcnt = (buf[2] << 16) + (buf[1] << 8) + buf[0];

  if (burstcnt)
   return burstcnt;

  usleep_range(TPM_TIMEOUT_US_LOW, TPM_TIMEOUT_US_HI);
 } while (time_before(jiffies, stop));
 return -EBUSY;
}
