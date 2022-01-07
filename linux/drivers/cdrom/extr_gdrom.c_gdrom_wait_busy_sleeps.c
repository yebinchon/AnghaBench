
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long GDROM_DEFAULT_TIMEOUT ;
 int cpu_relax () ;
 int gdrom_is_busy () ;
 int gdrom_wait_clrbusy () ;
 unsigned long jiffies ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

__attribute__((used)) static bool gdrom_wait_busy_sleeps(void)
{
 unsigned long timeout;

 timeout = jiffies + GDROM_DEFAULT_TIMEOUT;
 while (!gdrom_is_busy() && time_before(jiffies, timeout))
  cpu_relax();

 return gdrom_wait_clrbusy();
}
