
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpm_chip {int flags; int ops_sem; int * ops; int dev_num; int dev; int cdev; } ;


 int TPM2_SU_CLEAR ;
 int TPM_CHIP_FLAG_TPM2 ;
 int cdev_device_del (int *,int *) ;
 int dev_nums_idr ;
 int down_write (int *) ;
 int idr_lock ;
 int idr_replace (int *,int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tpm2_shutdown (struct tpm_chip*,int ) ;
 int tpm_chip_start (struct tpm_chip*) ;
 int tpm_chip_stop (struct tpm_chip*) ;
 int up_write (int *) ;

__attribute__((used)) static void tpm_del_char_device(struct tpm_chip *chip)
{
 cdev_device_del(&chip->cdev, &chip->dev);


 mutex_lock(&idr_lock);
 idr_replace(&dev_nums_idr, ((void*)0), chip->dev_num);
 mutex_unlock(&idr_lock);


 down_write(&chip->ops_sem);
 if (chip->flags & TPM_CHIP_FLAG_TPM2) {
  if (!tpm_chip_start(chip)) {
   tpm2_shutdown(chip, TPM2_SU_CLEAR);
   tpm_chip_stop(chip);
  }
 }
 chip->ops = ((void*)0);
 up_write(&chip->ops_sem);
}
