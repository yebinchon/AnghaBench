
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gtm_timer {int dummy; } ;


 int EINVAL ;
 unsigned int fls_long (unsigned long) ;
 int gtm_set_ref_timer16 (struct gtm_timer*,int,unsigned long,int) ;

int gtm_set_timer16(struct gtm_timer *tmr, unsigned long usec, bool reload)
{

 int freq = 1000000;
 unsigned int bit;

 bit = fls_long(usec);
 if (bit > 15) {
  freq >>= bit - 15;
  usec >>= bit - 15;
 }

 if (!freq)
  return -EINVAL;

 return gtm_set_ref_timer16(tmr, freq, usec, reload);
}
