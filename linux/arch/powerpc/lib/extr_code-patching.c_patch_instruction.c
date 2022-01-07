
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int do_patch_instruction (unsigned int*,unsigned int) ;
 scalar_t__ init_mem_is_free ;
 scalar_t__ init_section_contains (unsigned int*,int) ;
 int pr_debug (char*,unsigned int*) ;

int patch_instruction(unsigned int *addr, unsigned int instr)
{

 if (init_mem_is_free && init_section_contains(addr, 4)) {
  pr_debug("Skipping init section patching addr: 0x%px\n", addr);
  return 0;
 }
 return do_patch_instruction(addr, instr);
}
