
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {int dummy; } ;
struct irq_alloc_info {int uv_limit; int uv_blade; unsigned long uv_offset; char* uv_name; int type; } ;


 int ENOMEM ;
 int X86_IRQ_ALLOC_TYPE_UV ;
 int cpumask_of (int) ;
 int init_irq_alloc_info (struct irq_alloc_info*,int ) ;
 int irq_domain_alloc_irqs (struct irq_domain*,int,int ,struct irq_alloc_info*) ;
 int uv_blade_to_memory_nid (int) ;
 struct irq_domain* uv_get_irq_domain () ;

int uv_setup_irq(char *irq_name, int cpu, int mmr_blade,
   unsigned long mmr_offset, int limit)
{
 struct irq_alloc_info info;
 struct irq_domain *domain = uv_get_irq_domain();

 if (!domain)
  return -ENOMEM;

 init_irq_alloc_info(&info, cpumask_of(cpu));
 info.type = X86_IRQ_ALLOC_TYPE_UV;
 info.uv_limit = limit;
 info.uv_blade = mmr_blade;
 info.uv_offset = mmr_offset;
 info.uv_name = irq_name;

 return irq_domain_alloc_irqs(domain, 1,
         uv_blade_to_memory_nid(mmr_blade), &info);
}
