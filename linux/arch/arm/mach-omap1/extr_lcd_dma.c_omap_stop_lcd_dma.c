
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int ext_ctrl; scalar_t__ active; } ;


 int OMAP1610_DMA_LCD_CCR ;
 int OMAP1610_DMA_LCD_CTRL ;
 scalar_t__ cpu_is_omap15xx () ;
 TYPE_1__ lcd_dma ;
 int omap_readw (int ) ;
 int omap_writew (int,int ) ;

void omap_stop_lcd_dma(void)
{
 u16 w;

 lcd_dma.active = 0;
 if (cpu_is_omap15xx() || !lcd_dma.ext_ctrl)
  return;

 w = omap_readw(OMAP1610_DMA_LCD_CCR);
 w &= ~(1 << 7);
 omap_writew(w, OMAP1610_DMA_LCD_CCR);

 w = omap_readw(OMAP1610_DMA_LCD_CTRL);
 w &= ~(1 << 8);
 omap_writew(w, OMAP1610_DMA_LCD_CTRL);
}
