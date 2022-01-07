
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int XICS_IRQ_SPURIOUS ;
 unsigned int icp_hv_get_xirr (int ) ;
 int icp_hv_set_xirr (unsigned int) ;
 unsigned int irq_find_mapping (int ,unsigned int) ;
 scalar_t__ likely (unsigned int) ;
 int xics_cppr_top () ;
 int xics_host ;
 int xics_mask_unknown_vec (unsigned int) ;
 int xics_push_cppr (unsigned int) ;

__attribute__((used)) static unsigned int icp_hv_get_irq(void)
{
 unsigned int xirr = icp_hv_get_xirr(xics_cppr_top());
 unsigned int vec = xirr & 0x00ffffff;
 unsigned int irq;

 if (vec == XICS_IRQ_SPURIOUS)
  return 0;

 irq = irq_find_mapping(xics_host, vec);
 if (likely(irq)) {
  xics_push_cppr(vec);
  return irq;
 }


 xics_mask_unknown_vec(vec);


 icp_hv_set_xirr(xirr);

 return 0;
}
