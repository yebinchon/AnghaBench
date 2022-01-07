
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct tpm_chip {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int locality; } ;


 int EIO ;
 scalar_t__ MAX_COUNT_LONG ;
 int TPM_DATA_FIFO (int ) ;
 int get_burstcount (struct tpm_chip*) ;
 int iic_tpm_read (int ,scalar_t__*,int) ;
 TYPE_1__ tpm_dev ;

__attribute__((used)) static int recv_data(struct tpm_chip *chip, u8 *buf, size_t count)
{
 size_t size = 0;
 ssize_t burstcnt;
 u8 retries = 0;
 int rc;

 while (size < count) {
  burstcnt = get_burstcount(chip);


  if (burstcnt < 0)
   return burstcnt;


  if (burstcnt > (count - size))
   burstcnt = count - size;

  rc = iic_tpm_read(TPM_DATA_FIFO(tpm_dev.locality),
      &(buf[size]), burstcnt);
  if (rc == 0)
   size += burstcnt;
  else if (rc < 0)
   retries++;


  if (retries > MAX_COUNT_LONG)
   return -EIO;
 }
 return size;
}
