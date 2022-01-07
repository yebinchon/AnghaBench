
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tpm_chip {int dev; } ;
struct tpm_atmel_priv {scalar_t__ iobase; } ;


 struct tpm_atmel_priv* dev_get_drvdata (int *) ;
 int ioread8 (scalar_t__) ;

__attribute__((used)) static u8 tpm_atml_status(struct tpm_chip *chip)
{
 struct tpm_atmel_priv *priv = dev_get_drvdata(&chip->dev);

 return ioread8(priv->iobase + 1);
}
