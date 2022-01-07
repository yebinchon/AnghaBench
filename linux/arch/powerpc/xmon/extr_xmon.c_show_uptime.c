
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec64 {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;


 int NSEC_PER_SEC ;
 int __delay (int) ;
 int bus_error_jmp ;
 int catch_memory_errors ;
 int ktime_get_coarse_boottime_ts64 (struct timespec64*) ;
 int printf (char*,unsigned long,unsigned long) ;
 scalar_t__ setjmp (int ) ;
 int sync () ;

__attribute__((used)) static void
show_uptime(void)
{
 struct timespec64 uptime;

 if (setjmp(bus_error_jmp) == 0) {
  catch_memory_errors = 1;
  sync();

  ktime_get_coarse_boottime_ts64(&uptime);
  printf("Uptime: %lu.%.2lu seconds\n", (unsigned long)uptime.tv_sec,
   ((unsigned long)uptime.tv_nsec / (NSEC_PER_SEC/100)));

  sync();
  __delay(200); }

 catch_memory_errors = 0;
}
