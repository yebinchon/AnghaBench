
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pr_warn (char*,unsigned int,int) ;
 int versatile_immitation_do_lowpower (unsigned int,int*) ;
 int versatile_immitation_enter_lowpower (unsigned int) ;
 int versatile_immitation_leave_lowpower (unsigned int) ;

void versatile_immitation_cpu_die(unsigned int cpu, unsigned int actrl_mask)
{
 int spurious = 0;

 versatile_immitation_enter_lowpower(actrl_mask);
 versatile_immitation_do_lowpower(cpu, &spurious);
 versatile_immitation_leave_lowpower(actrl_mask);

 if (spurious)
  pr_warn("CPU%u: %u spurious wakeup calls\n", cpu, spurious);
}
