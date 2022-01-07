
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uprobe_opcode_t ;


 int is_trap (int ) ;

bool is_trap_insn(uprobe_opcode_t *insn)
{
 return (is_trap(*insn));
}
