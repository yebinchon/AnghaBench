
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uprobe_opcode_t ;


 int UPROBE_SWBP_ARM_INSN ;
 int __mem_to_opcode_arm (int ) ;

bool is_swbp_insn(uprobe_opcode_t *insn)
{
 return (__mem_to_opcode_arm(*insn) & 0x0fffffff) ==
  (UPROBE_SWBP_ARM_INSN & 0x0fffffff);
}
