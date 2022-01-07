
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_info {int* used_cp; int fpstate; } ;
struct pt_regs {int dummy; } ;
typedef int elf_fpregset_t ;


 struct thread_info* current_thread_info () ;
 int memcpy (int *,int *,int) ;

int dump_fpu(struct pt_regs *regs, elf_fpregset_t *fp)
{
 struct thread_info *thread = current_thread_info();
 int used_math = thread->used_cp[1] | thread->used_cp[2];





 return used_math != 0;
}
