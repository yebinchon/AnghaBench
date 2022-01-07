
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unwind_state {int dummy; } ;
struct pt_regs {unsigned long ip; unsigned long sp; } ;


 void* IRET_FRAME_OFFSET ;
 int IRET_FRAME_SIZE ;
 int stack_access_ok (struct unwind_state*,unsigned long,int ) ;

__attribute__((used)) static bool deref_stack_iret_regs(struct unwind_state *state, unsigned long addr,
      unsigned long *ip, unsigned long *sp)
{
 struct pt_regs *regs = (void *)addr - IRET_FRAME_OFFSET;

 if (!stack_access_ok(state, addr, IRET_FRAME_SIZE))
  return 0;

 *ip = regs->ip;
 *sp = regs->sp;
 return 1;
}
