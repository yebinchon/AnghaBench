
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int GPI_LCD_CASE_OFF ;
 int GPO_LCD_EN ;
 int IRQ_HANDLED ;
 scalar_t__ gpio_get_value (int ) ;
 int gpio_set_value (int ,int) ;

__attribute__((used)) static irqreturn_t nb0916_lcdcaseoff_handler(int irq, void *dev_id)
{
 if (gpio_get_value(GPI_LCD_CASE_OFF))
  gpio_set_value(GPO_LCD_EN, 1);
 else
  gpio_set_value(GPO_LCD_EN, 0);

 return IRQ_HANDLED;
}
