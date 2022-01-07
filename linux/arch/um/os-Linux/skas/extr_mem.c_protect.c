
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_id {int dummy; } ;


 int __NR_mprotect ;
 int run_syscall_stub (struct mm_id*,int ,unsigned long*,int ,void**,int) ;

int protect(struct mm_id * mm_idp, unsigned long addr, unsigned long len,
     unsigned int prot, int done, void **data)
{
 int ret;
 unsigned long args[] = { addr, len, prot, 0, 0, 0 };

 ret = run_syscall_stub(mm_idp, __NR_mprotect, args, 0,
          data, done);

 return ret;
}
