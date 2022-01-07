
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union mips_instruction {int word; } ;
struct mm_struct {int dummy; } ;
struct arch_uprobe {int * ixol; int * insn; } ;


 int EINVAL ;
 int UPROBE_BRK_UPROBE_XOL ;
 scalar_t__ __insn_is_compact_branch (union mips_instruction) ;
 size_t insn_has_delay_slot (union mips_instruction) ;
 int pr_notice (char*) ;

int arch_uprobe_analyze_insn(struct arch_uprobe *aup,
 struct mm_struct *mm, unsigned long addr)
{
 union mips_instruction inst;





 if (addr & 0x03)
  return -EINVAL;

 inst.word = aup->insn[0];

 if (__insn_is_compact_branch(inst)) {
  pr_notice("Uprobes for compact branches are not supported\n");
  return -EINVAL;
 }

 aup->ixol[0] = aup->insn[insn_has_delay_slot(inst)];
 aup->ixol[1] = UPROBE_BRK_UPROBE_XOL;

 return 0;
}
