
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long sections_per_block ;

__attribute__((used)) static inline unsigned long base_memory_block_id(unsigned long section_nr)
{
 return section_nr / sections_per_block;
}
