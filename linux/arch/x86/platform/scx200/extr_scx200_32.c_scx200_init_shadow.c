
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int inl (scalar_t__) ;
 scalar_t__ scx200_gpio_base ;
 int * scx200_gpio_shadow ;

__attribute__((used)) static void scx200_init_shadow(void)
{
 int bank;


 for (bank = 0; bank < 2; ++bank)
  scx200_gpio_shadow[bank] = inl(scx200_gpio_base + 0x10 * bank);
}
