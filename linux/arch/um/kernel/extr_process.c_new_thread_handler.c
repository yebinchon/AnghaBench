
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int regs; } ;
struct TYPE_8__ {int (* proc ) (void*) ;void* arg; } ;
struct TYPE_9__ {TYPE_1__ thread; } ;
struct TYPE_10__ {TYPE_2__ u; } ;
struct TYPE_12__ {TYPE_4__ regs; TYPE_3__ request; int * prev_sched; } ;
struct TYPE_14__ {TYPE_5__ thread; } ;
struct TYPE_13__ {int aux_fp_regs; } ;


 TYPE_7__* current ;
 TYPE_6__* current_thread_info () ;
 int schedule_tail (int *) ;
 int userspace (int *,int ) ;

void new_thread_handler(void)
{
 int (*fn)(void *), n;
 void *arg;

 if (current->thread.prev_sched != ((void*)0))
  schedule_tail(current->thread.prev_sched);
 current->thread.prev_sched = ((void*)0);

 fn = current->thread.request.u.thread.proc;
 arg = current->thread.request.u.thread.arg;




 n = fn(arg);
 userspace(&current->thread.regs.regs, current_thread_info()->aux_fp_regs);
}
