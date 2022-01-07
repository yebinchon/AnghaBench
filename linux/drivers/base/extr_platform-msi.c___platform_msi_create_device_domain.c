
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_msi_priv_data {int arg; void* host_data; } ;
struct irq_domain_ops {int dummy; } ;
struct irq_domain {int parent; } ;
struct device {int fwnode; int msi_domain; } ;
typedef int irq_write_msi_msg_t ;


 scalar_t__ IS_ERR (struct platform_msi_priv_data*) ;
 struct irq_domain* irq_domain_create_hierarchy (int ,int ,unsigned int,int ,struct irq_domain_ops const*,struct platform_msi_priv_data*) ;
 int irq_domain_remove (struct irq_domain*) ;
 int msi_domain_prepare_irqs (int ,struct device*,unsigned int,int *) ;
 struct platform_msi_priv_data* platform_msi_alloc_priv_data (struct device*,unsigned int,int ) ;
 int platform_msi_free_priv_data (struct platform_msi_priv_data*) ;

struct irq_domain *
__platform_msi_create_device_domain(struct device *dev,
        unsigned int nvec,
        bool is_tree,
        irq_write_msi_msg_t write_msi_msg,
        const struct irq_domain_ops *ops,
        void *host_data)
{
 struct platform_msi_priv_data *data;
 struct irq_domain *domain;
 int err;

 data = platform_msi_alloc_priv_data(dev, nvec, write_msi_msg);
 if (IS_ERR(data))
  return ((void*)0);

 data->host_data = host_data;
 domain = irq_domain_create_hierarchy(dev->msi_domain, 0,
          is_tree ? 0 : nvec,
          dev->fwnode, ops, data);
 if (!domain)
  goto free_priv;

 err = msi_domain_prepare_irqs(domain->parent, dev, nvec, &data->arg);
 if (err)
  goto free_domain;

 return domain;

free_domain:
 irq_domain_remove(domain);
free_priv:
 platform_msi_free_priv_data(data);
 return ((void*)0);
}
