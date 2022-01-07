
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct irq_domain {int dummy; } ;
struct irq_alloc_info {int dummy; } ;
struct TYPE_3__ {int type; } ;
struct TYPE_4__ {TYPE_1__ irqdomain_cfg; } ;





 int WARN (int,char*,int) ;
 int __irq_domain_alloc_irqs (struct irq_domain*,int,int,int ,struct irq_alloc_info*,int,int *) ;
 int ioapic_alloc_attr_node (struct irq_alloc_info*) ;
 int ioapic_initialized ;
 TYPE_2__* ioapics ;
 int mp_is_legacy_irq (int) ;
 int nr_legacy_irqs () ;

__attribute__((used)) static int alloc_irq_from_domain(struct irq_domain *domain, int ioapic, u32 gsi,
     struct irq_alloc_info *info)
{
 bool legacy = 0;
 int irq = -1;
 int type = ioapics[ioapic].irqdomain_cfg.type;

 switch (type) {
 case 129:




  if (!ioapic_initialized || gsi >= nr_legacy_irqs())
   irq = gsi;
  legacy = mp_is_legacy_irq(irq);
  break;
 case 128:
  irq = gsi;
  break;
 case 130:
  break;
 default:
  WARN(1, "ioapic: unknown irqdomain type %d\n", type);
  return -1;
 }

 return __irq_domain_alloc_irqs(domain, irq, 1,
           ioapic_alloc_attr_node(info),
           info, legacy, ((void*)0));
}
