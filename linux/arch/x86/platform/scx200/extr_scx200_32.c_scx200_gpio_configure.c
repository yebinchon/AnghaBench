
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;


 unsigned int inl (scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int outl (unsigned int,scalar_t__) ;
 scalar_t__ scx200_gpio_base ;
 int scx200_gpio_config_lock ;

u32 scx200_gpio_configure(unsigned index, u32 mask, u32 bits)
{
 u32 config, new_config;

 mutex_lock(&scx200_gpio_config_lock);

 outl(index, scx200_gpio_base + 0x20);
 config = inl(scx200_gpio_base + 0x24);

 new_config = (config & mask) | bits;
 outl(new_config, scx200_gpio_base + 0x24);

 mutex_unlock(&scx200_gpio_config_lock);

 return config;
}
