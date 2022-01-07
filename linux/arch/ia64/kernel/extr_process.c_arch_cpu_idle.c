
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void ia64_mark_idle (int) ;
 int min_xtp () ;
 int normal_xtp () ;
 int rmb () ;
 int safe_halt () ;
 void stub1 (int) ;
 void stub2 (int) ;

void arch_cpu_idle(void)
{
 void (*mark_idle)(int) = ia64_mark_idle;




 rmb();
 if (mark_idle)
  (*mark_idle)(1);

 safe_halt();

 if (mark_idle)
  (*mark_idle)(0);



}
