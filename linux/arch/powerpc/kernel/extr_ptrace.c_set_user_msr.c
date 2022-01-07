
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* regs; } ;
struct task_struct {TYPE_2__ thread; } ;
struct TYPE_3__ {unsigned long msr; } ;


 unsigned long MSR_DEBUGCHANGE ;

__attribute__((used)) static int set_user_msr(struct task_struct *task, unsigned long msr)
{
 task->thread.regs->msr &= ~MSR_DEBUGCHANGE;
 task->thread.regs->msr |= msr & MSR_DEBUGCHANGE;
 return 0;
}
