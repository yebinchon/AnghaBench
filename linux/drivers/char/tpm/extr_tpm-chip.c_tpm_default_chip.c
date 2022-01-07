
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpm_chip {int dev; } ;


 int dev_nums_idr ;
 int get_device (int *) ;
 struct tpm_chip* idr_get_next (int *,int*) ;
 int idr_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

struct tpm_chip *tpm_default_chip(void)
{
 struct tpm_chip *chip, *res = ((void*)0);
 int chip_num = 0;
 int chip_prev;

 mutex_lock(&idr_lock);

 do {
  chip_prev = chip_num;
  chip = idr_get_next(&dev_nums_idr, &chip_num);
  if (chip) {
   get_device(&chip->dev);
   res = chip;
   break;
  }
 } while (chip_prev != chip_num);

 mutex_unlock(&idr_lock);

 return res;
}
