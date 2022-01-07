
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct stack_trace {int dummy; } ;
struct pt_regs {int r15; int r1; int pc; } ;


 int microblaze_unwind_inner (struct task_struct*,int ,int ,int ,struct stack_trace*) ;

__attribute__((used)) static inline void unwind_trap(struct task_struct *task, unsigned long pc,
    unsigned long fp, struct stack_trace *trace)
{
 const struct pt_regs *regs = (const struct pt_regs *) fp;
 microblaze_unwind_inner(task, regs->pc, regs->r1, regs->r15, trace);
}
