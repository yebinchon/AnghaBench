
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct memory_block {int dummy; } ;
struct mem_section {int dummy; } ;
struct drmem_lmb {int base_addr; } ;


 int PFN_DOWN (int ) ;
 struct mem_section* __nr_to_section (unsigned long) ;
 struct memory_block* find_memory_block (struct mem_section*) ;
 unsigned long pfn_to_section_nr (int ) ;

__attribute__((used)) static struct memory_block *lmb_to_memblock(struct drmem_lmb *lmb)
{
 unsigned long section_nr;
 struct mem_section *mem_sect;
 struct memory_block *mem_block;

 section_nr = pfn_to_section_nr(PFN_DOWN(lmb->base_addr));
 mem_sect = __nr_to_section(section_nr);

 mem_block = find_memory_block(mem_sect);
 return mem_block;
}
