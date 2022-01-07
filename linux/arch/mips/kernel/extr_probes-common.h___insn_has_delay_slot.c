
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int opcode; int rt; } ;
struct TYPE_3__ {int func; } ;
union mips_instruction {TYPE_2__ i_format; TYPE_1__ r_format; } ;
__attribute__((used)) static inline int __insn_has_delay_slot(const union mips_instruction insn)
{
 switch (insn.i_format.opcode) {



 case 129:
  switch (insn.r_format.func) {
  case 134:
  case 133:
   return 1;
  }
  break;






 case 155:
  switch (insn.i_format.rt) {
  case 144:
  case 141:
  case 152:
  case 149:
  case 143:
  case 142:
  case 151:
  case 150:
  case 138:
   return 1;
  }
  break;




 case 135:
 case 136:
 case 154:
 case 153:
 case 140:
 case 139:
 case 146:
 case 145:
 case 148:
 case 147:
  return 1;




 case 137:






  return 1;
 }

 return 0;
}
