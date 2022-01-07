
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int* bytes; } ;
struct TYPE_3__ {int value; } ;
struct insn {TYPE_2__ opcode; TYPE_1__ modrm; } ;


 int X86_MODRM_REG (int ) ;

__attribute__((used)) static int __insn_is_indirect_jump(struct insn *insn)
{
 return ((insn->opcode.bytes[0] == 0xff &&
  (X86_MODRM_REG(insn->modrm.value) & 6) == 4) ||
  insn->opcode.bytes[0] == 0xea);
}
