
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int BRANCH_ABSOLUTE ;
 scalar_t__ instr_is_branch_bform (unsigned int) ;
 scalar_t__ instr_is_branch_iform (unsigned int) ;

int instr_is_relative_branch(unsigned int instr)
{
 if (instr & BRANCH_ABSOLUTE)
  return 0;

 return instr_is_branch_iform(instr) || instr_is_branch_bform(instr);
}
