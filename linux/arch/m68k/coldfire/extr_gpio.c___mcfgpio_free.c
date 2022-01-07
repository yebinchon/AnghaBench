
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __mcfgpio_direction_input (unsigned int) ;

void __mcfgpio_free(unsigned gpio)
{
 __mcfgpio_direction_input(gpio);
}
