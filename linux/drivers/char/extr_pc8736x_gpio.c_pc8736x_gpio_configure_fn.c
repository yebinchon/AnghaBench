
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int SIO_GPIO_UNIT ;
 int device_select (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pc8736x_gpio_config_lock ;
 int select_pin (unsigned int) ;
 int superio_inb (int) ;
 int superio_outb (int,int) ;

__attribute__((used)) static inline u32 pc8736x_gpio_configure_fn(unsigned index, u32 mask, u32 bits,
         u32 func_slct)
{
 u32 config, new_config;

 mutex_lock(&pc8736x_gpio_config_lock);

 device_select(SIO_GPIO_UNIT);
 select_pin(index);


 config = superio_inb(func_slct);


 new_config = (config & mask) | bits;
 superio_outb(func_slct, new_config);

 mutex_unlock(&pc8736x_gpio_config_lock);

 return config;
}
