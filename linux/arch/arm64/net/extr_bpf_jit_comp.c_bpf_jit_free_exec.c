
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void vfree (void*) ;

void bpf_jit_free_exec(void *addr)
{
 return vfree(addr);
}
