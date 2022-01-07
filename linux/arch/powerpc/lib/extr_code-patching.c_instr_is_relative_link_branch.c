
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int BRANCH_SET_LINK ;
 scalar_t__ instr_is_relative_branch (unsigned int) ;

int instr_is_relative_link_branch(unsigned int instr)
{
 return instr_is_relative_branch(instr) && (instr & BRANCH_SET_LINK);
}
