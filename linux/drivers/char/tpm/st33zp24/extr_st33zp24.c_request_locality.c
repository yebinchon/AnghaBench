
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct tpm_chip {unsigned long timeout_a; int dev; } ;
struct st33zp24_dev {int locality; int phy_id; TYPE_1__* ops; } ;
struct TYPE_2__ {long (* send ) (int ,int ,int *,int) ;} ;


 int EACCES ;
 int TPM_ACCESS ;
 int TPM_ACCESS_REQUEST_USE ;
 int TPM_TIMEOUT ;
 scalar_t__ check_locality (struct tpm_chip*) ;
 struct st33zp24_dev* dev_get_drvdata (int *) ;
 unsigned long jiffies ;
 int msleep (int ) ;
 long stub1 (int ,int ,int *,int) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

__attribute__((used)) static int request_locality(struct tpm_chip *chip)
{
 struct st33zp24_dev *tpm_dev = dev_get_drvdata(&chip->dev);
 unsigned long stop;
 long ret;
 u8 data;

 if (check_locality(chip))
  return tpm_dev->locality;

 data = TPM_ACCESS_REQUEST_USE;
 ret = tpm_dev->ops->send(tpm_dev->phy_id, TPM_ACCESS, &data, 1);
 if (ret < 0)
  return ret;

 stop = jiffies + chip->timeout_a;


 do {
  if (check_locality(chip))
   return tpm_dev->locality;
  msleep(TPM_TIMEOUT);
 } while (time_before(jiffies, stop));


 return -EACCES;
}
