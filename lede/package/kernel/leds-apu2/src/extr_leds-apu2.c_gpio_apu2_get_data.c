
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gpio_chip {int dummy; } ;


 int GPIO_BIT_READ ;
 int * gpio_addr ;
 int ioread32 (int ) ;

__attribute__((used)) static int gpio_apu2_get_data (struct gpio_chip *chip, unsigned offset)
{
 u32 val;

 val = ioread32 (gpio_addr[offset]);

 return (val >> GPIO_BIT_READ) & 1;
}
