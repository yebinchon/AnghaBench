
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void __bm_unmap (unsigned long*) ;

__attribute__((used)) static void bm_unmap(unsigned long *p_addr)
{
 return __bm_unmap(p_addr);
}
