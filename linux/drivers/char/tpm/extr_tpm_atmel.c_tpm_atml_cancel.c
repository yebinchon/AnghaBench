
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpm_chip {int dev; } ;
struct tpm_atmel_priv {scalar_t__ iobase; } ;


 int ATML_STATUS_ABORT ;
 struct tpm_atmel_priv* dev_get_drvdata (int *) ;
 int iowrite8 (int ,scalar_t__) ;

__attribute__((used)) static void tpm_atml_cancel(struct tpm_chip *chip)
{
 struct tpm_atmel_priv *priv = dev_get_drvdata(&chip->dev);

 iowrite8(ATML_STATUS_ABORT, priv->iobase + 1);
}
