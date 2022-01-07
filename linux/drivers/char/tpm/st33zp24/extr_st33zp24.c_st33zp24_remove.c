
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpm_chip {int dummy; } ;


 int tpm_chip_unregister (struct tpm_chip*) ;

int st33zp24_remove(struct tpm_chip *chip)
{
 tpm_chip_unregister(chip);
 return 0;
}
