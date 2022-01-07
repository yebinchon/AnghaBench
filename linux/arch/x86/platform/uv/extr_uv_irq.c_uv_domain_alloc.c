
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uv_irq_2_mmr_pnode {int offset; int pnode; } ;
struct irq_domain {int dummy; } ;
struct irq_data {int dummy; } ;
struct irq_alloc_info {scalar_t__ type; scalar_t__ uv_limit; int uv_name; int uv_offset; int uv_blade; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQ_MOVE_PCNTXT ;
 int IRQ_NO_BALANCING ;
 scalar_t__ UV_AFFINITY_CPU ;
 scalar_t__ X86_IRQ_ALLOC_TYPE_UV ;
 int handle_percpu_irq ;
 int irq_data_get_node (struct irq_data*) ;
 int irq_domain_alloc_irqs_parent (struct irq_domain*,unsigned int,unsigned int,void*) ;
 struct irq_data* irq_domain_get_irq_data (struct irq_domain*,unsigned int) ;
 int irq_domain_set_info (struct irq_domain*,unsigned int,unsigned int,int *,struct uv_irq_2_mmr_pnode*,int ,int *,int ) ;
 int irq_set_status_flags (unsigned int,int ) ;
 int kfree (struct uv_irq_2_mmr_pnode*) ;
 struct uv_irq_2_mmr_pnode* kmalloc_node (int,int ,int ) ;
 int uv_blade_to_pnode (int ) ;
 int uv_irq_chip ;

__attribute__((used)) static int uv_domain_alloc(struct irq_domain *domain, unsigned int virq,
      unsigned int nr_irqs, void *arg)
{
 struct uv_irq_2_mmr_pnode *chip_data;
 struct irq_alloc_info *info = arg;
 struct irq_data *irq_data = irq_domain_get_irq_data(domain, virq);
 int ret;

 if (nr_irqs > 1 || !info || info->type != X86_IRQ_ALLOC_TYPE_UV)
  return -EINVAL;

 chip_data = kmalloc_node(sizeof(*chip_data), GFP_KERNEL,
     irq_data_get_node(irq_data));
 if (!chip_data)
  return -ENOMEM;

 ret = irq_domain_alloc_irqs_parent(domain, virq, nr_irqs, arg);
 if (ret >= 0) {
  if (info->uv_limit == UV_AFFINITY_CPU)
   irq_set_status_flags(virq, IRQ_NO_BALANCING);
  else
   irq_set_status_flags(virq, IRQ_MOVE_PCNTXT);

  chip_data->pnode = uv_blade_to_pnode(info->uv_blade);
  chip_data->offset = info->uv_offset;
  irq_domain_set_info(domain, virq, virq, &uv_irq_chip, chip_data,
        handle_percpu_irq, ((void*)0), info->uv_name);
 } else {
  kfree(chip_data);
 }

 return ret;
}
