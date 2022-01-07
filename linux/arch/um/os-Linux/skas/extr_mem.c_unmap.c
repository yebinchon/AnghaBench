
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_id {int dummy; } ;


 int __NR_munmap ;
 int run_syscall_stub (struct mm_id*,int ,unsigned long*,int ,void**,int) ;

int unmap(struct mm_id * mm_idp, unsigned long addr, unsigned long len,
   int done, void **data)
{
 int ret;
 unsigned long args[] = { (unsigned long) addr, len, 0, 0, 0,
     0 };

 ret = run_syscall_stub(mm_idp, __NR_munmap, args, 0,
          data, done);

 return ret;
}
