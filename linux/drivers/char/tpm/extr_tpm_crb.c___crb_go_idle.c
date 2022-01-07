
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct crb_priv {scalar_t__ sm; TYPE_1__* regs_t; } ;
struct TYPE_2__ {int ctrl_req; } ;


 scalar_t__ ACPI_TPM2_COMMAND_BUFFER_WITH_ARM_SMC ;
 scalar_t__ ACPI_TPM2_COMMAND_BUFFER_WITH_START_METHOD ;
 scalar_t__ ACPI_TPM2_START_METHOD ;
 int CRB_CTRL_REQ_GO_IDLE ;
 int ETIME ;
 int TPM2_TIMEOUT_C ;
 int crb_wait_for_reg_32 (int *,int ,int ,int ) ;
 int dev_warn (struct device*,char*) ;
 int iowrite32 (int ,int *) ;

__attribute__((used)) static int __crb_go_idle(struct device *dev, struct crb_priv *priv)
{
 if ((priv->sm == ACPI_TPM2_START_METHOD) ||
     (priv->sm == ACPI_TPM2_COMMAND_BUFFER_WITH_START_METHOD) ||
     (priv->sm == ACPI_TPM2_COMMAND_BUFFER_WITH_ARM_SMC))
  return 0;

 iowrite32(CRB_CTRL_REQ_GO_IDLE, &priv->regs_t->ctrl_req);

 if (!crb_wait_for_reg_32(&priv->regs_t->ctrl_req,
     CRB_CTRL_REQ_GO_IDLE ,
     0,
     TPM2_TIMEOUT_C)) {
  dev_warn(dev, "goIdle timed out\n");
  return -ETIME;
 }

 return 0;
}
