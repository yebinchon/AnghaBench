
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct tpm_info {int irq; struct resource res; } ;
struct pnp_device_id {int dummy; } ;
struct pnp_dev {int dev; } ;


 int ENODEV ;
 int IORESOURCE_MEM ;
 struct resource* pnp_get_resource (struct pnp_dev*,int ,int ) ;
 int pnp_irq (struct pnp_dev*,int ) ;
 scalar_t__ pnp_irq_valid (struct pnp_dev*,int ) ;
 int tpm_tis_init (int *,struct tpm_info*) ;

__attribute__((used)) static int tpm_tis_pnp_init(struct pnp_dev *pnp_dev,
       const struct pnp_device_id *pnp_id)
{
 struct tpm_info tpm_info = {};
 struct resource *res;

 res = pnp_get_resource(pnp_dev, IORESOURCE_MEM, 0);
 if (!res)
  return -ENODEV;
 tpm_info.res = *res;

 if (pnp_irq_valid(pnp_dev, 0))
  tpm_info.irq = pnp_irq(pnp_dev, 0);
 else
  tpm_info.irq = -1;

 return tpm_tis_init(&pnp_dev->dev, &tpm_info);
}
