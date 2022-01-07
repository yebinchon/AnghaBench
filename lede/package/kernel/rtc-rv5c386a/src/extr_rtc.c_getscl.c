
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gpio_get_value (int ) ;
 int scl_index ;

__attribute__((used)) static inline int getscl(void)
{
 return (gpio_get_value(scl_index));
}
