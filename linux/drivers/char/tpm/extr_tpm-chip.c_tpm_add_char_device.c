
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int devt; } ;
struct tpm_chip {int flags; int dev_num; TYPE_1__ devs; int cdevs; TYPE_1__ dev; int cdev; } ;


 int MAJOR (int ) ;
 int MINOR (int ) ;
 int TPM_CHIP_FLAG_TPM2 ;
 int cdev_device_add (int *,TYPE_1__*) ;
 int dev_err (TYPE_1__*,char*,int ,int ,int ,int) ;
 int dev_name (TYPE_1__*) ;
 int dev_nums_idr ;
 int idr_lock ;
 int idr_replace (int *,struct tpm_chip*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int tpm_add_char_device(struct tpm_chip *chip)
{
 int rc;

 rc = cdev_device_add(&chip->cdev, &chip->dev);
 if (rc) {
  dev_err(&chip->dev,
   "unable to cdev_device_add() %s, major %d, minor %d, err=%d\n",
   dev_name(&chip->dev), MAJOR(chip->dev.devt),
   MINOR(chip->dev.devt), rc);
  return rc;
 }

 if (chip->flags & TPM_CHIP_FLAG_TPM2) {
  rc = cdev_device_add(&chip->cdevs, &chip->devs);
  if (rc) {
   dev_err(&chip->devs,
    "unable to cdev_device_add() %s, major %d, minor %d, err=%d\n",
    dev_name(&chip->devs), MAJOR(chip->devs.devt),
    MINOR(chip->devs.devt), rc);
   return rc;
  }
 }


 mutex_lock(&idr_lock);
 idr_replace(&dev_nums_idr, chip, chip->dev_num);
 mutex_unlock(&idr_lock);

 return rc;
}
