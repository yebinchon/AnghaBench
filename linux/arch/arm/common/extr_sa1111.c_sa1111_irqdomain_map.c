
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sa1111 {int dummy; } ;
struct irq_domain {struct sa1111* host_data; } ;
typedef scalar_t__ irq_hw_number_t ;


 scalar_t__ AUDXMTDMADONEA ;
 int EINVAL ;
 int IRQ_NOPROBE ;
 int IRQ_NOREQUEST ;
 scalar_t__ SSPROR ;
 int handle_edge_irq ;
 int irq_clear_status_flags (unsigned int,int) ;
 int irq_set_chip_and_handler (unsigned int,int *,int ) ;
 int irq_set_chip_data (unsigned int,struct sa1111*) ;
 int sa1111_irq_chip ;

__attribute__((used)) static int sa1111_irqdomain_map(struct irq_domain *d, unsigned int irq,
 irq_hw_number_t hwirq)
{
 struct sa1111 *sachip = d->host_data;


 if (hwirq > SSPROR && hwirq < AUDXMTDMADONEA)
  return -EINVAL;

 irq_set_chip_data(irq, sachip);
 irq_set_chip_and_handler(irq, &sa1111_irq_chip, handle_edge_irq);
 irq_clear_status_flags(irq, IRQ_NOREQUEST | IRQ_NOPROBE);

 return 0;
}
