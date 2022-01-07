
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct decode_header {int dummy; } ;
struct arch_probes_insn {int dummy; } ;
typedef int probes_opcode_t ;
typedef enum probes_insn { ____Placeholder_probes_insn } probes_insn ;


 int decode_wb_pc (int ,struct arch_probes_insn*,struct decode_header const*,int) ;

enum probes_insn
decode_ldr(probes_opcode_t insn, struct arch_probes_insn *asi,
    const struct decode_header *d)
{
 return decode_wb_pc(insn, asi, d, 0);
}
