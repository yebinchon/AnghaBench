
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kunmap_atomic (unsigned long*) ;

__attribute__((used)) static void __bm_unmap(unsigned long *p_addr)
{
 kunmap_atomic(p_addr);
}
