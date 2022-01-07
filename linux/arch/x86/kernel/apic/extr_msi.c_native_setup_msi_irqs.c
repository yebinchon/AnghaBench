
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct irq_domain {int dummy; } ;
struct irq_alloc_info {struct pci_dev* msi_dev; int type; } ;


 int ENOSYS ;
 int X86_IRQ_ALLOC_TYPE_MSI ;
 int init_irq_alloc_info (struct irq_alloc_info*,int *) ;
 struct irq_domain* irq_remapping_get_irq_domain (struct irq_alloc_info*) ;
 struct irq_domain* msi_default_domain ;
 int msi_domain_alloc_irqs (struct irq_domain*,int *,int) ;

int native_setup_msi_irqs(struct pci_dev *dev, int nvec, int type)
{
 struct irq_domain *domain;
 struct irq_alloc_info info;

 init_irq_alloc_info(&info, ((void*)0));
 info.type = X86_IRQ_ALLOC_TYPE_MSI;
 info.msi_dev = dev;

 domain = irq_remapping_get_irq_domain(&info);
 if (domain == ((void*)0))
  domain = msi_default_domain;
 if (domain == ((void*)0))
  return -ENOSYS;

 return msi_domain_alloc_irqs(domain, &dev->dev, nvec);
}
