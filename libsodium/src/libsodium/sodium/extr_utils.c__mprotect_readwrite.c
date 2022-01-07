
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;


 int ENOSYS ;
 int PAGE_READWRITE ;
 int PROT_READ ;
 int PROT_WRITE ;
 scalar_t__ VirtualProtect (void*,size_t,int ,int *) ;
 int errno ;
 int mprotect (void*,size_t,int) ;

__attribute__((used)) static int
_mprotect_readwrite(void *ptr, size_t size)
{






    errno = ENOSYS;
    return -1;

}
