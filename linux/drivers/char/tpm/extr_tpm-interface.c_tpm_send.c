
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpm_chip {int dummy; } ;
struct tpm_buf {void* data; } ;


 int ENODEV ;
 struct tpm_chip* tpm_find_get_ops (struct tpm_chip*) ;
 int tpm_put_ops (struct tpm_chip*) ;
 int tpm_transmit_cmd (struct tpm_chip*,struct tpm_buf*,int ,char*) ;

int tpm_send(struct tpm_chip *chip, void *cmd, size_t buflen)
{
 struct tpm_buf buf;
 int rc;

 chip = tpm_find_get_ops(chip);
 if (!chip)
  return -ENODEV;

 buf.data = cmd;
 rc = tpm_transmit_cmd(chip, &buf, 0, "attempting to a send a command");

 tpm_put_ops(chip);
 return rc;
}
