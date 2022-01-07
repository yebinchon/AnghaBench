
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tpm_chip {int dev; } ;
struct tpm_atmel_priv {int iobase; } ;


 int dev_dbg (int *,char*,...) ;
 struct tpm_atmel_priv* dev_get_drvdata (int *) ;
 int iowrite8 (int ,int ) ;

__attribute__((used)) static int tpm_atml_send(struct tpm_chip *chip, u8 *buf, size_t count)
{
 struct tpm_atmel_priv *priv = dev_get_drvdata(&chip->dev);
 int i;

 dev_dbg(&chip->dev, "tpm_atml_send:\n");
 for (i = 0; i < count; i++) {
  dev_dbg(&chip->dev, "%d 0x%x(%d)\n", i, buf[i], buf[i]);
  iowrite8(buf[i], priv->iobase);
 }

 return 0;
}
