
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct omap_hwmod {scalar_t__ dev_attr; } ;
struct omap_dss_dispc_dev_attr {int manager_count; scalar_t__ has_framedonetv_irq; } ;


 int DIGIT_EN_MASK ;
 int DISPC_CONTROL ;
 int DISPC_CONTROL2 ;
 int DISPC_CONTROL3 ;
 int DISPC_IRQSTATUS ;
 int EVSYNC_EVEN_IRQ_SHIFT ;
 int EVSYNC_ODD_IRQ_SHIFT ;
 int FRAMEDONE2_IRQ_SHIFT ;
 int FRAMEDONE3_IRQ_SHIFT ;
 int FRAMEDONETV_IRQ_SHIFT ;
 int FRAMEDONE_IRQ_SHIFT ;
 int FRAMEDONE_IRQ_TIMEOUT ;
 int LCD_EN_MASK ;
 int WARN (int,char*) ;
 int mdelay (int) ;
 struct omap_hwmod* omap_hwmod_lookup (char*) ;
 int omap_hwmod_read (struct omap_hwmod*,int ) ;
 int omap_hwmod_write (int,struct omap_hwmod*,int ) ;
 int pr_err (char*) ;

__attribute__((used)) static void dispc_disable_outputs(void)
{
 u32 v, irq_mask = 0;
 bool lcd_en, digit_en, lcd2_en = 0, lcd3_en = 0;
 int i;
 struct omap_dss_dispc_dev_attr *da;
 struct omap_hwmod *oh;

 oh = omap_hwmod_lookup("dss_dispc");
 if (!oh) {
  WARN(1, "display: could not disable outputs during reset - could not find dss_dispc hwmod\n");
  return;
 }

 if (!oh->dev_attr) {
  pr_err("display: could not disable outputs during reset due to missing dev_attr\n");
  return;
 }

 da = (struct omap_dss_dispc_dev_attr *)oh->dev_attr;


 v = omap_hwmod_read(oh, DISPC_CONTROL);
 lcd_en = v & LCD_EN_MASK;
 digit_en = v & DIGIT_EN_MASK;


 if (da->manager_count > 2) {
  v = omap_hwmod_read(oh, DISPC_CONTROL2);
  lcd2_en = v & LCD_EN_MASK;
 }


 if (da->manager_count > 3) {
  v = omap_hwmod_read(oh, DISPC_CONTROL3);
  lcd3_en = v & LCD_EN_MASK;
 }

 if (!(lcd_en | digit_en | lcd2_en | lcd3_en))
  return;





 if (lcd_en)
  irq_mask |= 1 << FRAMEDONE_IRQ_SHIFT;

 if (digit_en) {
  if (da->has_framedonetv_irq) {
   irq_mask |= 1 << FRAMEDONETV_IRQ_SHIFT;
  } else {
   irq_mask |= 1 << EVSYNC_EVEN_IRQ_SHIFT |
    1 << EVSYNC_ODD_IRQ_SHIFT;
  }
 }

 if (lcd2_en)
  irq_mask |= 1 << FRAMEDONE2_IRQ_SHIFT;
 if (lcd3_en)
  irq_mask |= 1 << FRAMEDONE3_IRQ_SHIFT;





 omap_hwmod_write(irq_mask, oh, DISPC_IRQSTATUS);


 v = omap_hwmod_read(oh, DISPC_CONTROL);
 v &= ~(LCD_EN_MASK | DIGIT_EN_MASK);
 omap_hwmod_write(v, oh, DISPC_CONTROL);


 if (da->manager_count > 2) {
  v = omap_hwmod_read(oh, DISPC_CONTROL2);
  v &= ~LCD_EN_MASK;
  omap_hwmod_write(v, oh, DISPC_CONTROL2);
 }


 if (da->manager_count > 3) {
  v = omap_hwmod_read(oh, DISPC_CONTROL3);
  v &= ~LCD_EN_MASK;
  omap_hwmod_write(v, oh, DISPC_CONTROL3);
 }

 i = 0;
 while ((omap_hwmod_read(oh, DISPC_IRQSTATUS) & irq_mask) !=
        irq_mask) {
  i++;
  if (i > FRAMEDONE_IRQ_TIMEOUT) {
   pr_err("didn't get FRAMEDONE1/2/3 or TV interrupt\n");
   break;
  }
  mdelay(1);
 }
}
