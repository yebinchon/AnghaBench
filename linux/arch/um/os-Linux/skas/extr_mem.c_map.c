
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_id {int dummy; } ;


 unsigned long MAP_FIXED ;
 unsigned long MAP_SHARED ;
 unsigned long MMAP_OFFSET (unsigned long long) ;
 int STUB_MMAP_NR ;
 int run_syscall_stub (struct mm_id*,int ,unsigned long*,unsigned long,void**,int) ;

int map(struct mm_id * mm_idp, unsigned long virt, unsigned long len, int prot,
 int phys_fd, unsigned long long offset, int done, void **data)
{
 int ret;
 unsigned long args[] = { virt, len, prot,
     MAP_SHARED | MAP_FIXED, phys_fd,
     MMAP_OFFSET(offset) };

 ret = run_syscall_stub(mm_idp, STUB_MMAP_NR, args, virt,
          data, done);

 return ret;
}
