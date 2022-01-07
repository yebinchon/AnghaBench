
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PROT_EXEC ;
 int PROT_READ ;
 int PROT_WRITE ;
 int errno ;
 scalar_t__ mprotect (void*,unsigned long,int) ;

int os_protect_memory(void *addr, unsigned long len, int r, int w, int x)
{
 int prot = ((r ? PROT_READ : 0) | (w ? PROT_WRITE : 0) |
      (x ? PROT_EXEC : 0));

 if (mprotect(addr, len, prot) < 0)
  return -errno;

 return 0;
}
