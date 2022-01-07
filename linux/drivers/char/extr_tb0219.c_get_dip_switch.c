
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int TB0219_DIP_SWITCH ;
 int tb0219_read (int ) ;

__attribute__((used)) static inline char get_dip_switch(unsigned int pin)
{
 uint16_t values;

 values = tb0219_read(TB0219_DIP_SWITCH);
 if (values & (1 << pin))
  return '1';

 return '0';
}
