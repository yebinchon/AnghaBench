
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int regs; } ;
struct TYPE_7__ {TYPE_1__ regs; int * prev_sched; } ;
struct TYPE_9__ {TYPE_2__ thread; } ;
struct TYPE_8__ {int aux_fp_regs; } ;


 int arch_switch_to (TYPE_4__*) ;
 TYPE_4__* current ;
 TYPE_3__* current_thread_info () ;
 int force_flush_all () ;
 int schedule_tail (int *) ;
 int userspace (int *,int ) ;

void fork_handler(void)
{
 force_flush_all();

 schedule_tail(current->thread.prev_sched);






 arch_switch_to(current);

 current->thread.prev_sched = ((void*)0);

 userspace(&current->thread.regs.regs, current_thread_info()->aux_fp_regs);
}
