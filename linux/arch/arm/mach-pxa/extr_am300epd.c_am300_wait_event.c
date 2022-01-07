
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct broadsheetfb_par {int waitq; } ;


 int RDY_GPIO_PIN ;
 int gpio_get_value (int ) ;
 int wait_event (int ,int ) ;

__attribute__((used)) static int am300_wait_event(struct broadsheetfb_par *par)
{

 wait_event(par->waitq, gpio_get_value(RDY_GPIO_PIN));
 return 0;
}
