
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_id {int dummy; } ;


 scalar_t__ STUB_DATA ;
 unsigned long UM_KERN_PAGE_MASK ;
 int UM_KERN_PAGE_SIZE ;
 unsigned long* check_init_stack (struct mm_id*,void*) ;
 int do_syscall_stub (struct mm_id*,void**) ;
 int memcpy (unsigned long*,unsigned long*,int) ;

long syscall_stub_data(struct mm_id * mm_idp,
         unsigned long *data, int data_count,
         void **addr, void **stub_addr)
{
 unsigned long *stack;
 int ret = 0;





 if ((((unsigned long) *addr) & ~UM_KERN_PAGE_MASK) >=
    UM_KERN_PAGE_SIZE - (10 + data_count) * sizeof(long)) {
  ret = do_syscall_stub(mm_idp, addr);

  if (ret)
   return ret;
 }

 stack = check_init_stack(mm_idp, *addr);
 *addr = stack;

 *stack = data_count * sizeof(long);

 memcpy(stack + 1, data, data_count * sizeof(long));

 *stub_addr = (void *)(((unsigned long)(stack + 1) &
          ~UM_KERN_PAGE_MASK) + STUB_DATA);

 return 0;
}
