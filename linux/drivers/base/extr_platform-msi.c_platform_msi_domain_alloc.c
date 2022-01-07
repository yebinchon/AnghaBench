
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_msi_priv_data {int arg; int dev; } ;
struct irq_domain {int parent; struct platform_msi_priv_data* host_data; } ;


 int msi_domain_populate_irqs (int ,int ,unsigned int,unsigned int,int *) ;
 int platform_msi_alloc_descs_with_irq (int ,unsigned int,unsigned int,struct platform_msi_priv_data*) ;
 int platform_msi_domain_free (struct irq_domain*,unsigned int,unsigned int) ;

int platform_msi_domain_alloc(struct irq_domain *domain, unsigned int virq,
         unsigned int nr_irqs)
{
 struct platform_msi_priv_data *data = domain->host_data;
 int err;

 err = platform_msi_alloc_descs_with_irq(data->dev, virq, nr_irqs, data);
 if (err)
  return err;

 err = msi_domain_populate_irqs(domain->parent, data->dev,
           virq, nr_irqs, &data->arg);
 if (err)
  platform_msi_domain_free(domain, virq, nr_irqs);

 return err;
}
