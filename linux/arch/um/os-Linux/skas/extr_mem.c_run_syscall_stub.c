
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_id {int dummy; } ;


 unsigned long UM_KERN_PAGE_MASK ;
 int UM_KERN_PAGE_SIZE ;
 unsigned long* check_init_stack (struct mm_id*,void*) ;
 long do_syscall_stub (struct mm_id*,void**) ;

long run_syscall_stub(struct mm_id * mm_idp, int syscall,
        unsigned long *args, long expected, void **addr,
        int done)
{
 unsigned long *stack = check_init_stack(mm_idp, *addr);

 *stack += sizeof(long);
 stack += *stack / sizeof(long);

 *stack++ = syscall;
 *stack++ = args[0];
 *stack++ = args[1];
 *stack++ = args[2];
 *stack++ = args[3];
 *stack++ = args[4];
 *stack++ = args[5];
 *stack++ = expected;
 *stack = 0;

 if (!done && ((((unsigned long) stack) & ~UM_KERN_PAGE_MASK) <
       UM_KERN_PAGE_SIZE - 10 * sizeof(long))) {
  *addr = stack;
  return 0;
 }

 return do_syscall_stub(mm_idp, addr);
}
