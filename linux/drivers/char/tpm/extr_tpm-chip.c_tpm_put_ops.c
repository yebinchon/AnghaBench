
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpm_chip {int dev; int ops_sem; int tpm_mutex; } ;


 int mutex_unlock (int *) ;
 int put_device (int *) ;
 int tpm_chip_stop (struct tpm_chip*) ;
 int up_read (int *) ;

void tpm_put_ops(struct tpm_chip *chip)
{
 tpm_chip_stop(chip);
 mutex_unlock(&chip->tpm_mutex);
 up_read(&chip->ops_sem);
 put_device(&chip->dev);
}
