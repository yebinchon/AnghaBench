
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ type; scalar_t__ address; } ;
struct thread_struct {TYPE_1__ hw_brk; } ;


 scalar_t__ ppc_breakpoint_available () ;
 int set_breakpoint (TYPE_1__*) ;

__attribute__((used)) static void set_debug_reg_defaults(struct thread_struct *thread)
{
 thread->hw_brk.address = 0;
 thread->hw_brk.type = 0;
 if (ppc_breakpoint_available())
  set_breakpoint(&thread->hw_brk);
}
