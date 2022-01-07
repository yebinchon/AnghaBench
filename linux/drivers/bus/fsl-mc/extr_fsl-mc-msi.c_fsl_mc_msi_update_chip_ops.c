
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msi_domain_info {struct irq_chip* chip; } ;
struct irq_chip {scalar_t__ irq_write_msi_msg; } ;


 scalar_t__ fsl_mc_msi_write_msg ;

__attribute__((used)) static void fsl_mc_msi_update_chip_ops(struct msi_domain_info *info)
{
 struct irq_chip *chip = info->chip;

 if (!chip)
  return;




 if (!chip->irq_write_msi_msg)
  chip->irq_write_msi_msg = fsl_mc_msi_write_msg;
}
