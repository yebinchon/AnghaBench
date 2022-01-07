
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char AUXIO_LED ;
 unsigned char get_auxio () ;
 int set_auxio (unsigned char,unsigned char) ;

__attribute__((used)) static inline void led_toggle(void)
{
 unsigned char val = get_auxio();
 unsigned char on, off;

 if (val & AUXIO_LED) {
  on = 0;
  off = AUXIO_LED;
 } else {
  on = AUXIO_LED;
  off = 0;
 }

 set_auxio(on, off);
}
