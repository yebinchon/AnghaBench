
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tpm_chip {int dev; } ;
struct crb_priv {scalar_t__ sm; TYPE_1__* regs_t; } ;
struct TYPE_2__ {int ctrl_cancel; } ;


 scalar_t__ ACPI_TPM2_COMMAND_BUFFER_WITH_START_METHOD ;
 scalar_t__ ACPI_TPM2_START_METHOD ;
 int CRB_CANCEL_INVOKE ;
 scalar_t__ crb_do_acpi_start (struct tpm_chip*) ;
 int dev_err (int *,char*) ;
 struct crb_priv* dev_get_drvdata (int *) ;
 int iowrite32 (int ,int *) ;

__attribute__((used)) static void crb_cancel(struct tpm_chip *chip)
{
 struct crb_priv *priv = dev_get_drvdata(&chip->dev);

 iowrite32(CRB_CANCEL_INVOKE, &priv->regs_t->ctrl_cancel);

 if (((priv->sm == ACPI_TPM2_START_METHOD) ||
     (priv->sm == ACPI_TPM2_COMMAND_BUFFER_WITH_START_METHOD)) &&
      crb_do_acpi_start(chip))
  dev_err(&chip->dev, "ACPI Start failed\n");
}
