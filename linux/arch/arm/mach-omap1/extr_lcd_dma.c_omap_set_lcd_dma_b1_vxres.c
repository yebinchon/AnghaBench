
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long vxres; } ;


 int BUG () ;
 scalar_t__ cpu_is_omap15xx () ;
 TYPE_1__ lcd_dma ;
 int pr_err (char*) ;

void omap_set_lcd_dma_b1_vxres(unsigned long vxres)
{
 if (cpu_is_omap15xx()) {
  pr_err("DMA virtual resolution is not supported in 1510 mode\n");
  BUG();
 }
 lcd_dma.vxres = vxres;
}
