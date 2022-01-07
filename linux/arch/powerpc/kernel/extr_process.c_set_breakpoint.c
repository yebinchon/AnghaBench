
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arch_hw_breakpoint {int dummy; } ;


 int __set_breakpoint (struct arch_hw_breakpoint*) ;
 int preempt_disable () ;
 int preempt_enable () ;

__attribute__((used)) static void set_breakpoint(struct arch_hw_breakpoint *brk)
{
 preempt_disable();
 __set_breakpoint(brk);
 preempt_enable();
}
