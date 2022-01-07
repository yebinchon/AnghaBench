
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct orion_gpio_chip {int dummy; } ;


 int GPIO_IO_CONF (struct orion_gpio_chip*) ;
 int readl (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static inline void
__set_direction(struct orion_gpio_chip *ochip, unsigned pin, int input)
{
 u32 u;

 u = readl(GPIO_IO_CONF(ochip));
 if (input)
  u |= 1 << pin;
 else
  u &= ~(1 << pin);
 writel(u, GPIO_IO_CONF(ochip));
}
