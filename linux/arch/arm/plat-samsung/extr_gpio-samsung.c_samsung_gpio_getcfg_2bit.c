
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct samsung_gpio_chip {int base; } ;


 unsigned int S3C_GPIO_SPECIAL (unsigned int) ;
 unsigned int __raw_readl (int ) ;

__attribute__((used)) static unsigned int samsung_gpio_getcfg_2bit(struct samsung_gpio_chip *chip,
          unsigned int off)
{
 u32 con;

 con = __raw_readl(chip->base);
 con >>= off * 2;
 con &= 3;


 return S3C_GPIO_SPECIAL(con);
}
