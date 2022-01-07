
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPIO_PTB5 ;
 int gpio_set_value (int ,int) ;

__attribute__((used)) static void usb1_port_power(int port, int power)
{
 gpio_set_value(GPIO_PTB5, power);
}
