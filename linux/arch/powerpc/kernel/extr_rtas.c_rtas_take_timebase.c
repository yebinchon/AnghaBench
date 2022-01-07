
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int arch_spin_lock (int *) ;
 int arch_spin_unlock (int *) ;
 int barrier () ;
 int set_tb (int,int) ;
 int timebase ;
 int timebase_lock ;

void rtas_take_timebase(void)
{
 while (!timebase)
  barrier();
 arch_spin_lock(&timebase_lock);
 set_tb(timebase >> 32, timebase & 0xffffffff);
 timebase = 0;
 arch_spin_unlock(&timebase_lock);
}
