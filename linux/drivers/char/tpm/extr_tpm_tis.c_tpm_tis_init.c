
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct tpm_tis_tcg_phy {TYPE_1__ priv; int iobase; } ;
struct tpm_info {int irq; int res; } ;
struct device {int dummy; } ;


 int ACPI_COMPANION (struct device*) ;
 int ACPI_HANDLE (struct device*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int TPM_TIS_ITPM_WORKAROUND ;
 int check_acpi_tpm2 (struct device*) ;
 int devm_ioremap_resource (struct device*,int *) ;
 struct tpm_tis_tcg_phy* devm_kzalloc (struct device*,int,int ) ;
 scalar_t__ interrupts ;
 scalar_t__ is_itpm (int ) ;
 scalar_t__ itpm ;
 int tpm_tcg ;
 int tpm_tis_core_init (struct device*,TYPE_1__*,int,int *,int ) ;

__attribute__((used)) static int tpm_tis_init(struct device *dev, struct tpm_info *tpm_info)
{
 struct tpm_tis_tcg_phy *phy;
 int irq = -1;
 int rc;

 rc = check_acpi_tpm2(dev);
 if (rc)
  return rc;

 phy = devm_kzalloc(dev, sizeof(struct tpm_tis_tcg_phy), GFP_KERNEL);
 if (phy == ((void*)0))
  return -ENOMEM;

 phy->iobase = devm_ioremap_resource(dev, &tpm_info->res);
 if (IS_ERR(phy->iobase))
  return PTR_ERR(phy->iobase);

 if (interrupts)
  irq = tpm_info->irq;

 if (itpm || is_itpm(ACPI_COMPANION(dev)))
  phy->priv.flags |= TPM_TIS_ITPM_WORKAROUND;

 return tpm_tis_core_init(dev, &phy->priv, irq, &tpm_tcg,
     ACPI_HANDLE(dev));
}
