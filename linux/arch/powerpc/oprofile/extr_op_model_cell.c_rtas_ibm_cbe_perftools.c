
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int __pa (void*) ;
 int pm_rtas_token ;
 int rtas_call (int ,int,int,int *,int,int,int,int,unsigned long) ;

__attribute__((used)) static int
rtas_ibm_cbe_perftools(int subfunc, int passthru,
         void *address, unsigned long length)
{
 u64 paddr = __pa(address);

 return rtas_call(pm_rtas_token, 5, 1, ((void*)0), subfunc,
    passthru, paddr >> 32, paddr & 0xffffffff, length);
}
