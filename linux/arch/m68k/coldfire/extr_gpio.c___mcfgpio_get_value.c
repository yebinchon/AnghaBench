
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __mcfgpio_ppdr (unsigned int) ;
 int mcfgpio_bit (unsigned int) ;
 int mcfgpio_read (int ) ;

int __mcfgpio_get_value(unsigned gpio)
{
 return mcfgpio_read(__mcfgpio_ppdr(gpio)) & mcfgpio_bit(gpio);
}
