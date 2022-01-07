
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ __USE_RTC () ;
 unsigned long get_rtcl () ;
 unsigned long get_tbl () ;
 int spin_begin () ;
 int spin_cpu_relax () ;
 int spin_end () ;
 scalar_t__ tb_invalid ;

void __delay(unsigned long loops)
{
 unsigned long start;
 int diff;

 spin_begin();
 if (__USE_RTC()) {
  start = get_rtcl();
  do {

   diff = get_rtcl() - start;
   if (diff < 0)
    diff += 1000000000;
   spin_cpu_relax();
  } while (diff < loops);
 } else if (tb_invalid) {





  spin_cpu_relax();
 } else {
  start = get_tbl();
  while (get_tbl() - start < loops)
   spin_cpu_relax();
 }
 spin_end();
}
