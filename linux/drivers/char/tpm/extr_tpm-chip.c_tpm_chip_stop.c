
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpm_chip {int dummy; } ;


 int tpm_clk_disable (struct tpm_chip*) ;
 int tpm_go_idle (struct tpm_chip*) ;
 int tpm_relinquish_locality (struct tpm_chip*) ;

void tpm_chip_stop(struct tpm_chip *chip)
{
 tpm_go_idle(chip);
 tpm_relinquish_locality(chip);
 tpm_clk_disable(chip);
}
