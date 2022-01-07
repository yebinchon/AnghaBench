
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long error_code; unsigned long cr2; int trap_nr; } ;
struct task_struct {TYPE_1__ thread; } ;


 unsigned long TASK_SIZE_MAX ;
 unsigned long X86_PF_PROT ;
 unsigned long X86_PF_USER ;
 int X86_TRAP_PF ;
 struct task_struct* current ;

__attribute__((used)) static void set_signal_archinfo(unsigned long address,
    unsigned long error_code)
{
 struct task_struct *tsk = current;
 if (address >= TASK_SIZE_MAX)
  error_code |= X86_PF_PROT;

 tsk->thread.trap_nr = X86_TRAP_PF;
 tsk->thread.error_code = error_code | X86_PF_USER;
 tsk->thread.cr2 = address;
}
