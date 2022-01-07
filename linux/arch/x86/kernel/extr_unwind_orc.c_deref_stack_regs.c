
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unwind_state {int dummy; } ;
struct pt_regs {unsigned long ip; unsigned long sp; } ;


 int BUILD_BUG_ON (int ) ;
 int CONFIG_X86_32 ;
 int IS_ENABLED (int ) ;
 int stack_access_ok (struct unwind_state*,unsigned long,int) ;

__attribute__((used)) static bool deref_stack_regs(struct unwind_state *state, unsigned long addr,
        unsigned long *ip, unsigned long *sp)
{
 struct pt_regs *regs = (struct pt_regs *)addr;


 BUILD_BUG_ON(IS_ENABLED(CONFIG_X86_32));

 if (!stack_access_ok(state, addr, sizeof(struct pt_regs)))
  return 0;

 *ip = regs->ip;
 *sp = regs->sp;
 return 1;
}
