
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_domain {int dummy; } ;
struct TYPE_2__ {int affinity; int node; } ;
struct irq_desc {TYPE_1__ irq_common_data; } ;
struct irq_alloc_info {int nasid; } ;
struct hub_irq_data {int dummy; } ;
struct hub_data {int h_cpus; } ;


 int EAGAIN ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NASID_TO_COMPACT_NODEID (int ) ;
 int REMOTE_HUB_CLR_INTR (int ,int) ;
 int alloc_level () ;
 int cpumask_copy (int ,int *) ;
 int handle_level_irq ;
 struct hub_data* hub_data (int ) ;
 int hub_irq_type ;
 int irq_domain_set_info (struct irq_domain*,unsigned int,int,int *,struct hub_irq_data*,int ,int *,int *) ;
 struct irq_desc* irq_to_desc (unsigned int) ;
 int kfree (struct hub_irq_data*) ;
 struct hub_irq_data* kzalloc (int,int ) ;
 int setup_hub_mask (struct hub_irq_data*,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int hub_domain_alloc(struct irq_domain *domain, unsigned int virq,
       unsigned int nr_irqs, void *arg)
{
 struct irq_alloc_info *info = arg;
 struct hub_irq_data *hd;
 struct hub_data *hub;
 struct irq_desc *desc;
 int swlevel;

 if (nr_irqs > 1 || !info)
  return -EINVAL;

 hd = kzalloc(sizeof(*hd), GFP_KERNEL);
 if (!hd)
  return -ENOMEM;

 swlevel = alloc_level();
 if (unlikely(swlevel < 0)) {
  kfree(hd);
  return -EAGAIN;
 }
 irq_domain_set_info(domain, virq, swlevel, &hub_irq_type, hd,
       handle_level_irq, ((void*)0), ((void*)0));


 hub = hub_data(NASID_TO_COMPACT_NODEID(info->nasid));
 setup_hub_mask(hd, &hub->h_cpus);


 REMOTE_HUB_CLR_INTR(info->nasid, swlevel);

 desc = irq_to_desc(virq);
 desc->irq_common_data.node = info->nasid;
 cpumask_copy(desc->irq_common_data.affinity, &hub->h_cpus);

 return 0;
}
