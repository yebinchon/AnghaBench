
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ address; scalar_t__ type; } ;
struct TYPE_4__ {int dbcr0; int dbcr1; } ;
struct thread_struct {TYPE_3__ hw_brk; struct perf_event** ptrace_bps; TYPE_2__* regs; TYPE_1__ debug; } ;
struct task_struct {struct thread_struct thread; } ;
struct perf_event {int dummy; } ;
struct TYPE_5__ {int msr; } ;


 int DBCR0_IDM ;
 int DBCR_ACTIVE_EVENTS (int ,int ) ;
 long EINVAL ;
 long ENOENT ;
 int MSR_DE ;
 int del_dac (struct task_struct*,int) ;
 int del_instruction_bp (struct task_struct*,int) ;
 int unregister_hw_breakpoint (struct perf_event*) ;

__attribute__((used)) static long ppc_del_hwdebug(struct task_struct *child, long data)
{
 if (data != 1)
  return -EINVAL;
 if (child->thread.hw_brk.address == 0)
  return -ENOENT;

 child->thread.hw_brk.address = 0;
 child->thread.hw_brk.type = 0;


 return 0;

}
