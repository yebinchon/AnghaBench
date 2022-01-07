
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpm_chip {int locality; } ;


 int tpm_clk_disable (struct tpm_chip*) ;
 int tpm_clk_enable (struct tpm_chip*) ;
 int tpm_cmd_ready (struct tpm_chip*) ;
 int tpm_relinquish_locality (struct tpm_chip*) ;
 int tpm_request_locality (struct tpm_chip*) ;

int tpm_chip_start(struct tpm_chip *chip)
{
 int ret;

 tpm_clk_enable(chip);

 if (chip->locality == -1) {
  ret = tpm_request_locality(chip);
  if (ret) {
   tpm_clk_disable(chip);
   return ret;
  }
 }

 ret = tpm_cmd_ready(chip);
 if (ret) {
  tpm_relinquish_locality(chip);
  tpm_clk_disable(chip);
  return ret;
 }

 return 0;
}
