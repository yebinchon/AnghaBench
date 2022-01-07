
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPIO_FN_INTC_IRQ0 ;
 int gpio_request (int ,int *) ;

__attribute__((used)) static int ts_init(void)
{
 gpio_request(GPIO_FN_INTC_IRQ0, ((void*)0));
 return 0;
}
