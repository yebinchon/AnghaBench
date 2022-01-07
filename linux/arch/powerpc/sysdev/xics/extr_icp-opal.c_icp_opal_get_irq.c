
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int XICS_IRQ_SPURIOUS ;
 int force_external_irq_replay () ;
 unsigned int icp_opal_get_xirr () ;
 unsigned int irq_find_mapping (int ,unsigned int) ;
 scalar_t__ likely (unsigned int) ;
 scalar_t__ opal_int_eoi (unsigned int) ;
 int xics_host ;
 int xics_mask_unknown_vec (unsigned int) ;
 int xics_push_cppr (unsigned int) ;

__attribute__((used)) static unsigned int icp_opal_get_irq(void)
{
 unsigned int xirr;
 unsigned int vec;
 unsigned int irq;

 xirr = icp_opal_get_xirr();
 vec = xirr & 0x00ffffff;
 if (vec == XICS_IRQ_SPURIOUS)
  return 0;

 irq = irq_find_mapping(xics_host, vec);
 if (likely(irq)) {
  xics_push_cppr(vec);
  return irq;
 }


 xics_mask_unknown_vec(vec);


 if (opal_int_eoi(xirr) > 0)
  force_external_irq_replay();

 return 0;
}
