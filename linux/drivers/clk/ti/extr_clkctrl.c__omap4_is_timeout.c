
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union omap4_timeout {int start; int cycles; } ;
typedef scalar_t__ u32 ;


 scalar_t__ _early_timeout ;
 int cpu_relax () ;
 int ktime_get () ;
 int ktime_to_ns (int ) ;
 scalar_t__ ktime_us_delta (int ,int ) ;
 scalar_t__ timekeeping_suspended ;
 int udelay (int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool _omap4_is_timeout(union omap4_timeout *time, u32 timeout)
{
 if (unlikely(_early_timeout || timekeeping_suspended)) {
  if (time->cycles++ < timeout) {
   udelay(1 * 2);
   return 0;
  }
 } else {
  if (!ktime_to_ns(time->start)) {
   time->start = ktime_get();
   return 0;
  }

  if (ktime_us_delta(ktime_get(), time->start) < timeout) {
   cpu_relax();
   return 0;
  }
 }

 return 1;
}
