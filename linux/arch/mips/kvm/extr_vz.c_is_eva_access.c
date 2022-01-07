
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ opcode; int func; } ;
union mips_instruction {TYPE_1__ spec3_format; } ;
 scalar_t__ spec3_op ;




__attribute__((used)) static bool is_eva_access(union mips_instruction inst)
{
 if (inst.spec3_format.opcode != spec3_op)
  return 0;

 switch (inst.spec3_format.func) {
 case 136:
 case 135:
 case 143:
 case 133:
 case 131:
 case 132:
 case 130:
 case 129:
 case 128:
 case 134:
 case 141:
 case 139:
 case 142:
 case 140:
 case 138:
 case 137:
  return 1;
 default:
  return 0;
 }
}
