
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpm_nsc_priv {scalar_t__ base; } ;
struct tpm_chip {int dev; } ;


 scalar_t__ NSC_COMMAND ;
 int NSC_COMMAND_CANCEL ;
 struct tpm_nsc_priv* dev_get_drvdata (int *) ;
 int outb (int ,scalar_t__) ;

__attribute__((used)) static void tpm_nsc_cancel(struct tpm_chip *chip)
{
 struct tpm_nsc_priv *priv = dev_get_drvdata(&chip->dev);

 outb(NSC_COMMAND_CANCEL, priv->base + NSC_COMMAND);
}
