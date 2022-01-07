
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpm_readpubek_out {int* algorithm; int* encscheme; int* sigscheme; int* parameters; int* modulus; int keysize; } ;
struct tpm_chip {int dummy; } ;
struct tpm_buf {int * data; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef int anti_replay ;


 int READ_PUBEK_RESULT_MIN_BODY_SIZE ;
 int TPM_ORD_READPUBEK ;
 int TPM_TAG_RQU_COMMAND ;
 int be32_to_cpu (int ) ;
 int memset (char**,int ,int) ;
 int sprintf (char*,char*,...) ;
 struct tpm_chip* to_tpm_chip (struct device*) ;
 int tpm_buf_append (struct tpm_buf*,char*,int) ;
 int tpm_buf_destroy (struct tpm_buf*) ;
 scalar_t__ tpm_buf_init (struct tpm_buf*,int ,int ) ;
 int tpm_put_ops (struct tpm_chip*) ;
 scalar_t__ tpm_transmit_cmd (struct tpm_chip*,struct tpm_buf*,int ,char*) ;
 scalar_t__ tpm_try_get_ops (struct tpm_chip*) ;

__attribute__((used)) static ssize_t pubek_show(struct device *dev, struct device_attribute *attr,
     char *buf)
{
 struct tpm_buf tpm_buf;
 struct tpm_readpubek_out *out;
 int i;
 char *str = buf;
 struct tpm_chip *chip = to_tpm_chip(dev);
 char anti_replay[20];

 memset(&anti_replay, 0, sizeof(anti_replay));

 if (tpm_try_get_ops(chip))
  return 0;

 if (tpm_buf_init(&tpm_buf, TPM_TAG_RQU_COMMAND, TPM_ORD_READPUBEK))
  goto out_ops;

 tpm_buf_append(&tpm_buf, anti_replay, sizeof(anti_replay));

 if (tpm_transmit_cmd(chip, &tpm_buf, READ_PUBEK_RESULT_MIN_BODY_SIZE,
        "attempting to read the PUBEK"))
  goto out_buf;

 out = (struct tpm_readpubek_out *)&tpm_buf.data[10];
 str +=
     sprintf(str,
      "Algorithm: %02X %02X %02X %02X\n"
      "Encscheme: %02X %02X\n"
      "Sigscheme: %02X %02X\n"
      "Parameters: %02X %02X %02X %02X "
      "%02X %02X %02X %02X "
      "%02X %02X %02X %02X\n"
      "Modulus length: %d\n"
      "Modulus:\n",
      out->algorithm[0], out->algorithm[1], out->algorithm[2],
      out->algorithm[3],
      out->encscheme[0], out->encscheme[1],
      out->sigscheme[0], out->sigscheme[1],
      out->parameters[0], out->parameters[1],
      out->parameters[2], out->parameters[3],
      out->parameters[4], out->parameters[5],
      out->parameters[6], out->parameters[7],
      out->parameters[8], out->parameters[9],
      out->parameters[10], out->parameters[11],
      be32_to_cpu(out->keysize));

 for (i = 0; i < 256; i++) {
  str += sprintf(str, "%02X ", out->modulus[i]);
  if ((i + 1) % 16 == 0)
   str += sprintf(str, "\n");
 }

out_buf:
 tpm_buf_destroy(&tpm_buf);
out_ops:
 tpm_put_ops(chip);
 return str - buf;
}
