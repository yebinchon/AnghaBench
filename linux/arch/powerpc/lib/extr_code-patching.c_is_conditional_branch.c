
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
bool is_conditional_branch(unsigned int instr)
{
 unsigned int opcode = instr >> 26;

 if (opcode == 16)
  return 1;
 if (opcode == 19) {
  switch ((instr >> 1) & 0x3ff) {
  case 16:
  case 528:
  case 560:
   return 1;
  }
 }
 return 0;
}
