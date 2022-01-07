
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PROT_EXEC ;
 int PROT_READ ;
 int PROT_WRITE ;
 int UM_THREAD_SIZE ;
 int errno ;
 scalar_t__ mprotect (void*,int ,int) ;
 int panic (char*,int ) ;

void stack_protections(unsigned long address)
{
 if (mprotect((void *) address, UM_THREAD_SIZE,
      PROT_READ | PROT_WRITE | PROT_EXEC) < 0)
  panic("protecting stack failed, errno = %d", errno);
}
