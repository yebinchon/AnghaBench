
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct module {int name; } ;


 scalar_t__ PPC_INST_LD_TOC ;
 scalar_t__ PPC_INST_NOP ;
 int instr_is_relative_link_branch (scalar_t__) ;
 scalar_t__ is_mprofile_mcount_callsite (char const*,scalar_t__*) ;
 int pr_err (char*,int ,scalar_t__,scalar_t__*) ;

__attribute__((used)) static int restore_r2(const char *name, u32 *instruction, struct module *me)
{
 u32 *prev_insn = instruction - 1;

 if (is_mprofile_mcount_callsite(name, prev_insn))
  return 1;






 if (!instr_is_relative_link_branch(*prev_insn))
  return 1;

 if (*instruction != PPC_INST_NOP) {
  pr_err("%s: Expected nop after call, got %08x at %pS\n",
   me->name, *instruction, instruction);
  return 0;
 }

 *instruction = PPC_INST_LD_TOC;
 return 1;
}
