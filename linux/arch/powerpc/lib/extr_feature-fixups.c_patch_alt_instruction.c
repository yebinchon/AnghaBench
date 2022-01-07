
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ branch_target (unsigned int*) ;
 scalar_t__ instr_is_relative_branch (unsigned int) ;
 int raw_patch_instruction (unsigned int*,unsigned int) ;
 unsigned int translate_branch (unsigned int*,unsigned int*) ;

__attribute__((used)) static int patch_alt_instruction(unsigned int *src, unsigned int *dest,
     unsigned int *alt_start, unsigned int *alt_end)
{
 unsigned int instr;

 instr = *src;

 if (instr_is_relative_branch(*src)) {
  unsigned int *target = (unsigned int *)branch_target(src);


  if (target < alt_start || target > alt_end) {
   instr = translate_branch(dest, src);
   if (!instr)
    return 1;
  }
 }

 raw_patch_instruction(dest, instr);

 return 0;
}
