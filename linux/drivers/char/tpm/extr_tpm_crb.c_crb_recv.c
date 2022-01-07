
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct tpm_chip {int dev; } ;
struct crb_priv {int * rsp; TYPE_1__* regs_t; } ;
typedef int __be32 ;
struct TYPE_2__ {int ctrl_sts; } ;


 int CRB_CTRL_STS_ERROR ;
 int EIO ;
 size_t TPM_HEADER_SIZE ;
 unsigned int be32_to_cpup (int *) ;
 struct crb_priv* dev_get_drvdata (int *) ;
 int ioread32 (int *) ;
 int memcpy_fromio (int *,int *,unsigned int) ;

__attribute__((used)) static int crb_recv(struct tpm_chip *chip, u8 *buf, size_t count)
{
 struct crb_priv *priv = dev_get_drvdata(&chip->dev);
 unsigned int expected;




 if (count < TPM_HEADER_SIZE)
  return -EIO;




 if (ioread32(&priv->regs_t->ctrl_sts) & CRB_CTRL_STS_ERROR)
  return -EIO;





 memcpy_fromio(buf, priv->rsp, 8);

 expected = be32_to_cpup((__be32 *)&buf[2]);
 if (expected > count || expected < TPM_HEADER_SIZE)
  return -EIO;

 memcpy_fromio(&buf[8], &priv->rsp[8], expected - 8);

 return expected;
}
