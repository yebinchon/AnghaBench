
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OMAP1610_DMA_LCD_CCR ;
 int OMAP_DMA_CCR_EN ;
 int OMAP_LCDC_CONTROL ;
 int OMAP_LCDC_CTRL_LCD_EN ;
 scalar_t__ cpu_is_omap15xx () ;
 scalar_t__ cpu_is_omap16xx () ;
 int omap_readw (int ) ;

int omap_lcd_dma_running(void)
{




 if (cpu_is_omap15xx())
  if (omap_readw(OMAP_LCDC_CONTROL) & OMAP_LCDC_CTRL_LCD_EN)
   return 1;


 if (cpu_is_omap16xx())
  if (omap_readw(OMAP1610_DMA_LCD_CCR) & OMAP_DMA_CCR_EN)
   return 1;

 return 0;
}
