
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_chip {int dummy; } ;
struct mpic {scalar_t__ spurious_vec; scalar_t__* ipi_vecs; int flags; scalar_t__* timer_vecs; scalar_t__ num_sources; struct irq_chip hc_ht_irq; struct irq_chip hc_irq; struct irq_chip hc_tm; struct irq_chip hc_ipi; scalar_t__ protected; } ;
struct irq_domain {struct mpic* host_data; } ;
typedef scalar_t__ irq_hw_number_t ;


 int DBG (char*,...) ;
 int EINVAL ;
 int EPERM ;
 int IRQ_TYPE_DEFAULT ;
 int MPIC_NO_RESET ;
 int MPIC_SECONDARY ;
 int WARN_ON (int) ;
 int handle_fasteoi_irq ;
 int handle_percpu_irq ;
 int irq_set_chip_and_handler (unsigned int,struct irq_chip*,int ) ;
 int irq_set_chip_data (unsigned int,struct mpic*) ;
 int irq_set_irq_type (unsigned int,int ) ;
 int mpic_irq_set_priority (unsigned int,int) ;
 scalar_t__ mpic_is_ht_interrupt (struct mpic*,scalar_t__) ;
 int mpic_is_ipi (struct mpic*,scalar_t__) ;
 scalar_t__ mpic_map_error_int (struct mpic*,unsigned int,scalar_t__) ;
 int mpic_msi_reserve_hwirq (struct mpic*,scalar_t__) ;
 int mpic_processor_id (struct mpic*) ;
 int mpic_set_destination (unsigned int,int) ;
 int mpic_set_vector (unsigned int,scalar_t__) ;
 int pr_warn (char*,unsigned int) ;
 int preempt_disable () ;
 int preempt_enable () ;
 scalar_t__ test_bit (scalar_t__,scalar_t__) ;

__attribute__((used)) static int mpic_host_map(struct irq_domain *h, unsigned int virq,
    irq_hw_number_t hw)
{
 struct mpic *mpic = h->host_data;
 struct irq_chip *chip;

 DBG("mpic: map virq %d, hwirq 0x%lx\n", virq, hw);

 if (hw == mpic->spurious_vec)
  return -EINVAL;
 if (mpic->protected && test_bit(hw, mpic->protected)) {
  pr_warn("mpic: Mapping of source 0x%x failed, source protected by firmware !\n",
   (unsigned int)hw);
  return -EPERM;
 }
 if (hw >= mpic->timer_vecs[0] && hw <= mpic->timer_vecs[7]) {
  WARN_ON(mpic->flags & MPIC_SECONDARY);

  DBG("mpic: mapping as timer\n");
  irq_set_chip_data(virq, mpic);
  irq_set_chip_and_handler(virq, &mpic->hc_tm,
      handle_fasteoi_irq);
  return 0;
 }

 if (mpic_map_error_int(mpic, virq, hw))
  return 0;

 if (hw >= mpic->num_sources) {
  pr_warn("mpic: Mapping of source 0x%x failed, source out of range !\n",
   (unsigned int)hw);
  return -EINVAL;
 }

 mpic_msi_reserve_hwirq(mpic, hw);


 chip = &mpic->hc_irq;







 DBG("mpic: mapping to irq chip @%p\n", chip);

 irq_set_chip_data(virq, mpic);
 irq_set_chip_and_handler(virq, chip, handle_fasteoi_irq);


 irq_set_irq_type(virq, IRQ_TYPE_DEFAULT);





 if (!mpic_is_ipi(mpic, hw) && (mpic->flags & MPIC_NO_RESET)) {
  int cpu;

  preempt_disable();
  cpu = mpic_processor_id(mpic);
  preempt_enable();

  mpic_set_vector(virq, hw);
  mpic_set_destination(virq, cpu);
  mpic_irq_set_priority(virq, 8);
 }

 return 0;
}
