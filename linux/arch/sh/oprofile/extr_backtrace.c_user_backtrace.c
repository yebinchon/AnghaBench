
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 scalar_t__ __copy_from_user_inatomic (unsigned long*,unsigned long*,int) ;
 int access_ok (unsigned long*,int) ;
 int oprofile_add_trace (unsigned long) ;

__attribute__((used)) static unsigned long *
user_backtrace(unsigned long *stackaddr, struct pt_regs *regs)
{
 unsigned long buf_stack;


 if (!access_ok(stackaddr, sizeof(unsigned long)))
  return ((void*)0);

 if (__copy_from_user_inatomic(&buf_stack, stackaddr, sizeof(unsigned long)))
  return ((void*)0);


 if (buf_stack & 3)
  return ((void*)0);

 oprofile_add_trace(buf_stack);

 stackaddr++;

 return stackaddr;
}
