
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unwind_state {int dummy; } ;


 unsigned long READ_ONCE_NOCHECK (unsigned long) ;
 int stack_access_ok (struct unwind_state*,unsigned long,int) ;

__attribute__((used)) static bool deref_stack_reg(struct unwind_state *state, unsigned long addr,
       unsigned long *val)
{
 if (!stack_access_ok(state, addr, sizeof(long)))
  return 0;

 *val = READ_ONCE_NOCHECK(*(unsigned long *)addr);
 return 1;
}
