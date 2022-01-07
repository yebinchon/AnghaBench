
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpm_chip {int dev; int ops_sem; int tpm_mutex; int ops; } ;


 int EIO ;
 int down_read (int *) ;
 int get_device (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_device (int *) ;
 int tpm_chip_start (struct tpm_chip*) ;
 int up_read (int *) ;

int tpm_try_get_ops(struct tpm_chip *chip)
{
 int rc = -EIO;

 get_device(&chip->dev);

 down_read(&chip->ops_sem);
 if (!chip->ops)
  goto out_ops;

 mutex_lock(&chip->tpm_mutex);
 rc = tpm_chip_start(chip);
 if (rc)
  goto out_lock;

 return 0;
out_lock:
 mutex_unlock(&chip->tpm_mutex);
out_ops:
 up_read(&chip->ops_sem);
 put_device(&chip->dev);
 return rc;
}
