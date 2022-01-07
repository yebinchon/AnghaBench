
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {int dummy; } ;
struct irq_alloc_info {int pin; int nasid; int ctrl; } ;
struct bridge_irq_chip_data {int nasid; int bc; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int bridge_irq_chip ;
 int handle_level_irq ;
 int irq_domain_alloc_irqs_parent (struct irq_domain*,unsigned int,unsigned int,void*) ;
 int irq_domain_set_info (struct irq_domain*,unsigned int,int ,int *,struct bridge_irq_chip_data*,int ,int *,int *) ;
 int kfree (struct bridge_irq_chip_data*) ;
 struct bridge_irq_chip_data* kzalloc (int,int ) ;

__attribute__((used)) static int bridge_domain_alloc(struct irq_domain *domain, unsigned int virq,
          unsigned int nr_irqs, void *arg)
{
 struct bridge_irq_chip_data *data;
 struct irq_alloc_info *info = arg;
 int ret;

 if (nr_irqs > 1 || !info)
  return -EINVAL;

 data = kzalloc(sizeof(*data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 ret = irq_domain_alloc_irqs_parent(domain, virq, nr_irqs, arg);
 if (ret >= 0) {
  data->bc = info->ctrl;
  data->nasid = info->nasid;
  irq_domain_set_info(domain, virq, info->pin, &bridge_irq_chip,
        data, handle_level_irq, ((void*)0), ((void*)0));
 } else {
  kfree(data);
 }

 return ret;
}
