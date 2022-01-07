
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct memory_block {int section_count; } ;


 int MEM_ONLINE ;
 int base_memory_block_id (unsigned long) ;
 int init_memory_block (struct memory_block**,int ,int ) ;
 scalar_t__ present_section_nr (unsigned long) ;
 unsigned long sections_per_block ;

__attribute__((used)) static int add_memory_block(unsigned long base_section_nr)
{
 int ret, section_count = 0;
 struct memory_block *mem;
 unsigned long nr;

 for (nr = base_section_nr; nr < base_section_nr + sections_per_block;
      nr++)
  if (present_section_nr(nr))
   section_count++;

 if (section_count == 0)
  return 0;
 ret = init_memory_block(&mem, base_memory_block_id(base_section_nr),
    MEM_ONLINE);
 if (ret)
  return ret;
 mem->section_count = section_count;
 return 0;
}
