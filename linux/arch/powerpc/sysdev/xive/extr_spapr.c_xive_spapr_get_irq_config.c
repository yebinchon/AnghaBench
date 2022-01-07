
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u8 ;
typedef unsigned long u32 ;


 int ENXIO ;
 long plpar_int_get_source_config (int ,unsigned long,unsigned long*,unsigned long*,unsigned long*) ;

__attribute__((used)) static int xive_spapr_get_irq_config(u32 hw_irq, u32 *target, u8 *prio,
         u32 *sw_irq)
{
 long rc;
 unsigned long h_target;
 unsigned long h_prio;
 unsigned long h_sw_irq;

 rc = plpar_int_get_source_config(0, hw_irq, &h_target, &h_prio,
      &h_sw_irq);

 *target = h_target;
 *prio = h_prio;
 *sw_irq = h_sw_irq;

 return rc == 0 ? 0 : -ENXIO;
}
