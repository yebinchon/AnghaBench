
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long base_memory_block_id (int ) ;
 int pfn_to_section_nr (unsigned long) ;

__attribute__((used)) static inline unsigned long pfn_to_block_id(unsigned long pfn)
{
 return base_memory_block_id(pfn_to_section_nr(pfn));
}
