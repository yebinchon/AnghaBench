
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpm_chip {int dev; } ;


 int put_device (int *) ;
 struct tpm_chip* tpm_default_chip () ;
 int tpm_try_get_ops (struct tpm_chip*) ;

struct tpm_chip *tpm_find_get_ops(struct tpm_chip *chip)
{
 int rc;

 if (chip) {
  if (!tpm_try_get_ops(chip))
   return chip;
  return ((void*)0);
 }

 chip = tpm_default_chip();
 if (!chip)
  return ((void*)0);
 rc = tpm_try_get_ops(chip);

 put_device(&chip->dev);
 if (rc)
  return ((void*)0);
 return chip;
}
