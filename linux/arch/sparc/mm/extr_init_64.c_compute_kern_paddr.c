
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int resource_size_t ;


 void* KERNBASE ;
 int kern_base ;

__attribute__((used)) static inline resource_size_t compute_kern_paddr(void *addr)
{
 return (resource_size_t) (addr - KERNBASE + kern_base);
}
