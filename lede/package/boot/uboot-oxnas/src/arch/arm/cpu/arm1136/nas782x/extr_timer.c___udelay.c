
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;


 int CONFIG_SYS_HZ ;
 int READ_TIMER_HW ;
 int TIMER_CLOCK ;
 int TIMER_LOAD_VAL ;
 int get_timer (int) ;

void __udelay (unsigned long usec)
{
 ulong tmo, tmp;

 if (usec > 100000) {
  tmo = usec / 1000;
  tmo *= CONFIG_SYS_HZ;
  tmo /= 1000;

  tmp = get_timer (0);
  while (get_timer (tmp) < tmo)
          ;
 } else {
  tmo = usec * (TIMER_CLOCK / 1000) / 1000;

  tmp = READ_TIMER_HW;
  while (((READ_TIMER_HW -tmp) & TIMER_LOAD_VAL) < tmo)
          ;
 }
}
