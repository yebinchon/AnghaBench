
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int read; int name; } ;
struct tpm_chip {int dev_num; TYPE_1__ hwrng; int hwrng_name; } ;


 int CONFIG_HW_RANDOM_TPM ;
 int IS_ENABLED (int ) ;
 int hwrng_register (TYPE_1__*) ;
 int snprintf (int ,int,char*,int) ;
 int tpm_hwrng_read ;

__attribute__((used)) static int tpm_add_hwrng(struct tpm_chip *chip)
{
 if (!IS_ENABLED(CONFIG_HW_RANDOM_TPM))
  return 0;

 snprintf(chip->hwrng_name, sizeof(chip->hwrng_name),
   "tpm-rng-%d", chip->dev_num);
 chip->hwrng.name = chip->hwrng_name;
 chip->hwrng.read = tpm_hwrng_read;
 return hwrng_register(&chip->hwrng);
}
