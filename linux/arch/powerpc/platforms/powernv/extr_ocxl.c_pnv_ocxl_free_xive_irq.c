
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int xive_native_free_irq (int ) ;

void pnv_ocxl_free_xive_irq(u32 irq)
{
 xive_native_free_irq(irq);
}
