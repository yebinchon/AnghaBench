
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long PAGE_MASK ;
 unsigned long VSYSCALL_ADDR ;
 int unlikely (int) ;

__attribute__((used)) static bool is_vsyscall_vaddr(unsigned long vaddr)
{
 return unlikely((vaddr & PAGE_MASK) == VSYSCALL_ADDR);
}
