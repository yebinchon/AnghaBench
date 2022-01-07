
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int barrier () ;
 scalar_t__ get_tb () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int mb () ;
 int pmac_tb_freeze (int) ;
 int stub1 (int) ;
 int stub2 (int) ;
 scalar_t__ tb_req ;
 scalar_t__ timebase ;

__attribute__((used)) static void smp_core99_give_timebase(void)
{
 unsigned long flags;

 local_irq_save(flags);

 while(!tb_req)
  barrier();
 tb_req = 0;
 (*pmac_tb_freeze)(1);
 mb();
 timebase = get_tb();
 mb();
 while (timebase)
  barrier();
 mb();
 (*pmac_tb_freeze)(0);
 mb();

 local_irq_restore(flags);
}
