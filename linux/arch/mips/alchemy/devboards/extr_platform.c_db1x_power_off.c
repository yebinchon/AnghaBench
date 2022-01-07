
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BCSR_RESETS ;
 int BCSR_SYSTEM ;
 int BCSR_SYSTEM_PWROFF ;
 int BCSR_SYSTEM_RESET ;
 int bcsr_write (int ,int) ;
 int cpu_wait () ;

__attribute__((used)) static void db1x_power_off(void)
{
 bcsr_write(BCSR_RESETS, 0);
 bcsr_write(BCSR_SYSTEM, BCSR_SYSTEM_PWROFF | BCSR_SYSTEM_RESET);
 while (1)
  cpu_wait();
}
