
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int const BRANCH_ABSOLUTE ;

__attribute__((used)) static unsigned long branch_iform_target(const unsigned int *instr)
{
 signed long imm;

 imm = *instr & 0x3FFFFFC;


 if (imm & 0x2000000)
  imm -= 0x4000000;

 if ((*instr & BRANCH_ABSOLUTE) == 0)
  imm += (unsigned long)instr;

 return (unsigned long)imm;
}
