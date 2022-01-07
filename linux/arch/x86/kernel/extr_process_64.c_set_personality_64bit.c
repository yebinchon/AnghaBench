
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {int status; } ;
struct TYPE_10__ {int personality; TYPE_2__* mm; } ;
struct TYPE_9__ {int orig_ax; } ;
struct TYPE_7__ {scalar_t__ ia32_compat; } ;
struct TYPE_8__ {TYPE_1__ context; } ;


 int READ_IMPLIES_EXEC ;
 int TIF_ADDR32 ;
 int TIF_IA32 ;
 int TIF_X32 ;
 int TS_COMPAT ;
 int __NR_execve ;
 int clear_thread_flag (int ) ;
 TYPE_4__* current ;
 TYPE_5__* current_thread_info () ;
 TYPE_3__* task_pt_regs (TYPE_4__*) ;

void set_personality_64bit(void)
{



 clear_thread_flag(TIF_IA32);
 clear_thread_flag(TIF_ADDR32);
 clear_thread_flag(TIF_X32);

 task_pt_regs(current)->orig_ax = __NR_execve;
 current_thread_info()->status &= ~TS_COMPAT;


 if (current->mm)
  current->mm->context.ia32_compat = 0;





 current->personality &= ~READ_IMPLIES_EXEC;
}
