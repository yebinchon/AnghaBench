
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int barrier () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int mb () ;
 int set_tb (int,int) ;
 int tb_req ;
 int timebase ;

__attribute__((used)) static void smp_core99_take_timebase(void)
{
 unsigned long flags;

 local_irq_save(flags);

 tb_req = 1;
 mb();
 while (!timebase)
  barrier();
 mb();
 set_tb(timebase >> 32, timebase & 0xffffffff);
 timebase = 0;
 mb();

 local_irq_restore(flags);
}
