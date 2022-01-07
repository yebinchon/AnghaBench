
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct decode_header {int dummy; } ;
struct arch_probes_insn {int stack_space; } ;
typedef int probes_opcode_t ;
typedef enum probes_insn { ____Placeholder_probes_insn } probes_insn ;


 int INSN_GOOD_NO_SLOT ;

enum probes_insn checker_stack_use_imm_x0x(probes_opcode_t insn,
  struct arch_probes_insn *asi,
  const struct decode_header *h)
{
 int imm = ((insn & 0xf00) >> 4) + (insn & 0xf);
 asi->stack_space = imm;
 return INSN_GOOD_NO_SLOT;
}
