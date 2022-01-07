
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {int dummy; } ;
struct device {int dummy; } ;


 struct irq_domain* dev_get_msi_domain (struct device*) ;
 int dev_to_msi_list (struct device*) ;
 int fsl_mc_msi_free_descs (struct device*) ;
 scalar_t__ list_empty (int ) ;
 int msi_domain_free_irqs (struct irq_domain*,struct device*) ;

void fsl_mc_msi_domain_free_irqs(struct device *dev)
{
 struct irq_domain *msi_domain;

 msi_domain = dev_get_msi_domain(dev);
 if (!msi_domain)
  return;

 msi_domain_free_irqs(msi_domain, dev);

 if (list_empty(dev_to_msi_list(dev)))
  return;

 fsl_mc_msi_free_descs(dev);
}
