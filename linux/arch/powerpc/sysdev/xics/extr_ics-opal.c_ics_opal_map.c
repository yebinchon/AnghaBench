
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ics {int dummy; } ;
typedef int int8_t ;
typedef scalar_t__ int64_t ;
typedef int __be16 ;


 int EINVAL ;
 int ENXIO ;
 scalar_t__ OPAL_SUCCESS ;
 scalar_t__ WARN_ON (int) ;
 unsigned int XICS_IPI ;
 unsigned int XICS_IRQ_SPURIOUS ;
 int handle_fasteoi_irq ;
 int ics_hal ;
 int ics_opal_irq_chip ;
 int irq_set_chip_and_handler (unsigned int,int *,int ) ;
 int irq_set_chip_data (unsigned int,int *) ;
 scalar_t__ opal_get_xive (unsigned int,int *,int *) ;
 scalar_t__ virq_to_hw (unsigned int) ;

__attribute__((used)) static int ics_opal_map(struct ics *ics, unsigned int virq)
{
 unsigned int hw_irq = (unsigned int)virq_to_hw(virq);
 int64_t rc;
 __be16 server;
 int8_t priority;

 if (WARN_ON(hw_irq == XICS_IPI || hw_irq == XICS_IRQ_SPURIOUS))
  return -EINVAL;


 rc = opal_get_xive(hw_irq, &server, &priority);
 if (rc != OPAL_SUCCESS)
  return -ENXIO;

 irq_set_chip_and_handler(virq, &ics_opal_irq_chip, handle_fasteoi_irq);
 irq_set_chip_data(virq, &ics_hal);

 return 0;
}
