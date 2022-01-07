
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tpm_nsc_priv {scalar_t__ base; } ;
struct tpm_chip {int dev; } ;


 scalar_t__ NSC_STATUS ;
 struct tpm_nsc_priv* dev_get_drvdata (int *) ;
 int inb (scalar_t__) ;

__attribute__((used)) static u8 tpm_nsc_status(struct tpm_chip *chip)
{
 struct tpm_nsc_priv *priv = dev_get_drvdata(&chip->dev);

 return inb(priv->base + NSC_STATUS);
}
