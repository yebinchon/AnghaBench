
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ics {int dummy; } ;


 int EINVAL ;
 int ENXIO ;
 scalar_t__ WARN_ON (int) ;
 unsigned int XICS_IPI ;
 unsigned int XICS_IRQ_SPURIOUS ;
 int handle_fasteoi_irq ;
 int ibm_get_xive ;
 int ics_rtas ;
 int ics_rtas_irq_chip ;
 int irq_set_chip_and_handler (unsigned int,int *,int ) ;
 int irq_set_chip_data (unsigned int,int *) ;
 int rtas_call (int ,int,int,int*,unsigned int) ;
 scalar_t__ virq_to_hw (unsigned int) ;

__attribute__((used)) static int ics_rtas_map(struct ics *ics, unsigned int virq)
{
 unsigned int hw_irq = (unsigned int)virq_to_hw(virq);
 int status[2];
 int rc;

 if (WARN_ON(hw_irq == XICS_IPI || hw_irq == XICS_IRQ_SPURIOUS))
  return -EINVAL;


 rc = rtas_call(ibm_get_xive, 1, 3, status, hw_irq);
 if (rc)
  return -ENXIO;

 irq_set_chip_and_handler(virq, &ics_rtas_irq_chip, handle_fasteoi_irq);
 irq_set_chip_data(virq, &ics_rtas);

 return 0;
}
