
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct tpm_chip {int dev; } ;
struct crb_priv {TYPE_1__* regs_t; } ;
struct TYPE_2__ {int ctrl_cancel; } ;


 int CRB_CANCEL_INVOKE ;
 struct crb_priv* dev_get_drvdata (int *) ;
 int ioread32 (int *) ;

__attribute__((used)) static bool crb_req_canceled(struct tpm_chip *chip, u8 status)
{
 struct crb_priv *priv = dev_get_drvdata(&chip->dev);
 u32 cancel = ioread32(&priv->regs_t->ctrl_cancel);

 return (cancel & CRB_CANCEL_INVOKE) == CRB_CANCEL_INVOKE;
}
