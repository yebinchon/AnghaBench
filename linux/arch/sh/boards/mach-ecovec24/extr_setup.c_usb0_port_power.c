
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPIO_PTB4 ;
 int gpio_set_value (int ,int) ;

__attribute__((used)) static void usb0_port_power(int port, int power)
{
 gpio_set_value(GPIO_PTB4, power);
}
