
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
typedef int elf_fpregset_t ;
struct TYPE_2__ {int cpu; } ;


 TYPE_1__* current_thread_info () ;
 int save_i387_registers (int ,unsigned long*) ;
 int * userspace_pid ;

int elf_core_copy_fpregs(struct task_struct *t, elf_fpregset_t *fpu)
{
 int cpu = current_thread_info()->cpu;

 return save_i387_registers(userspace_pid[cpu], (unsigned long *) fpu);
}
