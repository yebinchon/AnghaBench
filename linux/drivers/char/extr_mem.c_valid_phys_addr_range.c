
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ phys_addr_t ;


 scalar_t__ __pa (int ) ;
 int high_memory ;

__attribute__((used)) static inline int valid_phys_addr_range(phys_addr_t addr, size_t count)
{
 return addr + count <= __pa(high_memory);
}
