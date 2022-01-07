
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unwind_state {int task; } ;


 scalar_t__ task_pt_regs (int ) ;

__attribute__((used)) static inline unsigned long *last_frame(struct unwind_state *state)
{
 return (unsigned long *)task_pt_regs(state->task) - 2;
}
