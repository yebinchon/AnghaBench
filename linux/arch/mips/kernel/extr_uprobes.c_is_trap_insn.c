
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uprobe_opcode_t ;
struct TYPE_6__ {int rt; } ;
struct TYPE_5__ {int func; } ;
struct TYPE_4__ {int opcode; } ;
union mips_instruction {TYPE_3__ u_format; TYPE_2__ r_format; TYPE_1__ i_format; int word; } ;
bool is_trap_insn(uprobe_opcode_t *insn)
{
 union mips_instruction inst;

 inst.word = *insn;

 switch (inst.i_format.opcode) {
 case 140:
  switch (inst.r_format.func) {
  case 141:
  case 139:
  case 137:
  case 134:
  case 133:
  case 130:
  case 129:
   return 1;
  }
  break;

 case 142:
  switch (inst.u_format.rt) {
  case 138:
  case 136:
  case 135:
  case 132:
  case 131:
  case 128:
   return 1;
  }
  break;
 }

 return 0;
}
