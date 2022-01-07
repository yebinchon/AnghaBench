
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ARSR ;
 scalar_t__ cpu_is_pxa2xx () ;
 int pxa2xx_clear_reset_status (unsigned int) ;

void clear_reset_status(unsigned int mask)
{
 if (cpu_is_pxa2xx())
  pxa2xx_clear_reset_status(mask);
 else {

  ARSR = mask;
 }
}
