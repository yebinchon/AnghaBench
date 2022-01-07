
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct tpm_chip {int dev; } ;
struct crb_priv {size_t cmd_size; scalar_t__ sm; int smc_func_id; TYPE_1__* regs_t; int hid; int cmd; } ;
struct TYPE_2__ {int ctrl_start; int ctrl_cancel; } ;


 scalar_t__ ACPI_TPM2_COMMAND_BUFFER ;
 scalar_t__ ACPI_TPM2_COMMAND_BUFFER_WITH_ARM_SMC ;
 scalar_t__ ACPI_TPM2_COMMAND_BUFFER_WITH_START_METHOD ;
 scalar_t__ ACPI_TPM2_MEMORY_MAPPED ;
 scalar_t__ ACPI_TPM2_START_METHOD ;
 int CRB_START_INVOKE ;
 int E2BIG ;
 int crb_do_acpi_start (struct tpm_chip*) ;
 int dev_err (int *,char*,size_t,size_t) ;
 struct crb_priv* dev_get_drvdata (int *) ;
 int iowrite32 (int ,int *) ;
 int memcpy_toio (int ,int *,size_t) ;
 int strcmp (int ,char*) ;
 int tpm_crb_smc_start (int *,int ) ;
 int wmb () ;

__attribute__((used)) static int crb_send(struct tpm_chip *chip, u8 *buf, size_t len)
{
 struct crb_priv *priv = dev_get_drvdata(&chip->dev);
 int rc = 0;




 iowrite32(0, &priv->regs_t->ctrl_cancel);

 if (len > priv->cmd_size) {
  dev_err(&chip->dev, "invalid command count value %zd %d\n",
   len, priv->cmd_size);
  return -E2BIG;
 }

 memcpy_toio(priv->cmd, buf, len);


 wmb();





 if ((priv->sm == ACPI_TPM2_COMMAND_BUFFER) ||
     (priv->sm == ACPI_TPM2_MEMORY_MAPPED) ||
     (!strcmp(priv->hid, "MSFT0101")))
  iowrite32(CRB_START_INVOKE, &priv->regs_t->ctrl_start);

 if ((priv->sm == ACPI_TPM2_START_METHOD) ||
     (priv->sm == ACPI_TPM2_COMMAND_BUFFER_WITH_START_METHOD))
  rc = crb_do_acpi_start(chip);

 if (priv->sm == ACPI_TPM2_COMMAND_BUFFER_WITH_ARM_SMC) {
  iowrite32(CRB_START_INVOKE, &priv->regs_t->ctrl_start);
  rc = tpm_crb_smc_start(&chip->dev, priv->smc_func_id);
 }

 return rc;
}
