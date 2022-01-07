
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpm_class_ops {int dummy; } ;
struct tpm_chip {int dev; } ;
struct device {int dummy; } ;


 struct tpm_chip* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct tpm_chip*) ;
 int dev_set_drvdata (struct device*,struct tpm_chip*) ;
 int devm_add_action_or_reset (struct device*,void (*) (void*),int *) ;
 scalar_t__ put_device ;
 struct tpm_chip* tpm_chip_alloc (struct device*,struct tpm_class_ops const*) ;

struct tpm_chip *tpmm_chip_alloc(struct device *pdev,
     const struct tpm_class_ops *ops)
{
 struct tpm_chip *chip;
 int rc;

 chip = tpm_chip_alloc(pdev, ops);
 if (IS_ERR(chip))
  return chip;

 rc = devm_add_action_or_reset(pdev,
          (void (*)(void *)) put_device,
          &chip->dev);
 if (rc)
  return ERR_PTR(rc);

 dev_set_drvdata(pdev, chip);

 return chip;
}
