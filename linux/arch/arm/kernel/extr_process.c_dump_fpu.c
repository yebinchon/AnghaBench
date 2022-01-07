
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct user_fp {int dummy; } ;
struct TYPE_2__ {int soft; } ;
struct thread_info {int* used_cp; TYPE_1__ fpstate; } ;
struct pt_regs {int dummy; } ;


 struct thread_info* current_thread_info () ;
 int memcpy (struct user_fp*,int *,int) ;

int dump_fpu (struct pt_regs *regs, struct user_fp *fp)
{
 struct thread_info *thread = current_thread_info();
 int used_math = thread->used_cp[1] | thread->used_cp[2];

 if (used_math)
  memcpy(fp, &thread->fpstate.soft, sizeof (*fp));

 return used_math != 0;
}
