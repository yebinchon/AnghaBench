
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int ENXIO ;
 int XIVE_SRC_SET_EISN ;
 long plpar_int_set_source_config (int ,int ,int ,int ,int ) ;

__attribute__((used)) static int xive_spapr_configure_irq(u32 hw_irq, u32 target, u8 prio, u32 sw_irq)
{
 long rc;

 rc = plpar_int_set_source_config(XIVE_SRC_SET_EISN, hw_irq, target,
      prio, sw_irq);

 return rc == 0 ? 0 : -ENXIO;
}
