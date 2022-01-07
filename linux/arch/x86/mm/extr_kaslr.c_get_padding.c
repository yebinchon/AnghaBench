
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kaslr_memory_region {unsigned long size_tb; } ;


 unsigned long TB_SHIFT ;

__attribute__((used)) static inline unsigned long get_padding(struct kaslr_memory_region *region)
{
 return (region->size_tb << TB_SHIFT);
}
