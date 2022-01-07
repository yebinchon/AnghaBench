
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpm_chip {int dev; } ;


 int TPM_CTRL_WTX ;
 int TPM_MAX_WTX_PACKAGES ;
 int TPM_VL_VER ;
 int TPM_WTX_MSLEEP_TIME ;
 int dev_info (int *,char*,int ,int ) ;
 int number_of_wtx ;
 int tpm_msleep (int ) ;
 int wait_and_send (struct tpm_chip*,int) ;

__attribute__((used)) static void tpm_wtx(struct tpm_chip *chip)
{
 number_of_wtx++;
 dev_info(&chip->dev, "Granting WTX (%02d / %02d)\n",
   number_of_wtx, TPM_MAX_WTX_PACKAGES);
 wait_and_send(chip, TPM_VL_VER);
 wait_and_send(chip, TPM_CTRL_WTX);
 wait_and_send(chip, 0x00);
 wait_and_send(chip, 0x00);
 tpm_msleep(TPM_WTX_MSLEEP_TIME);
}
