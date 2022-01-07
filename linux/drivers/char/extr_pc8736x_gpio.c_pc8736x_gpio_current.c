
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* pc8736x_gpio_shadow ;

__attribute__((used)) static int pc8736x_gpio_current(unsigned minor)
{
 int port, bit;
 minor &= 0x1f;
 port = minor >> 3;
 bit = minor & 7;
 return ((pc8736x_gpio_shadow[port] >> bit) & 0x01);
}
