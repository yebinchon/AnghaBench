
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct tpm_chip {int dev; } ;
struct crb_priv {TYPE_1__* regs_t; } ;
struct TYPE_2__ {int ctrl_start; } ;


 int CRB_DRV_STS_COMPLETE ;
 int CRB_START_INVOKE ;
 struct crb_priv* dev_get_drvdata (int *) ;
 int ioread32 (int *) ;

__attribute__((used)) static u8 crb_status(struct tpm_chip *chip)
{
 struct crb_priv *priv = dev_get_drvdata(&chip->dev);
 u8 sts = 0;

 if ((ioread32(&priv->regs_t->ctrl_start) & CRB_START_INVOKE) !=
     CRB_START_INVOKE)
  sts |= CRB_DRV_STS_COMPLETE;

 return sts;
}
