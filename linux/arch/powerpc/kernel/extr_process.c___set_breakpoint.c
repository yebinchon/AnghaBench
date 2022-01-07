
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arch_hw_breakpoint {int dummy; } ;


 int CPU_FTR_ARCH_207S ;
 int WARN_ON_ONCE (int) ;
 int cpu_has_feature (int ) ;
 int current_brk ;
 scalar_t__ dawr_enabled () ;
 int memcpy (int ,struct arch_hw_breakpoint*,int) ;
 int set_dabr (struct arch_hw_breakpoint*) ;
 int set_dawr (struct arch_hw_breakpoint*) ;
 int this_cpu_ptr (int *) ;

void __set_breakpoint(struct arch_hw_breakpoint *brk)
{
 memcpy(this_cpu_ptr(&current_brk), brk, sizeof(*brk));

 if (dawr_enabled())

  set_dawr(brk);
 else if (!cpu_has_feature(CPU_FTR_ARCH_207S))

  set_dabr(brk);
 else

  WARN_ON_ONCE(1);
}
