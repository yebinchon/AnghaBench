
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int IR_OFF ;
 int IR_SIRMODE ;
 int TOSA_GPIO_IRDA_TX ;
 int TOSA_GPIO_IR_POWERDWN ;
 int gpio_free (int ) ;
 int tosa_irda_transceiver_mode (struct device*,int) ;

__attribute__((used)) static void tosa_irda_shutdown(struct device *dev)
{
 tosa_irda_transceiver_mode(dev, IR_SIRMODE | IR_OFF);
 gpio_free(TOSA_GPIO_IR_POWERDWN);
 gpio_free(TOSA_GPIO_IRDA_TX);
}
