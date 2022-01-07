
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
struct arch_uprobe {int dummy; } ;



int arch_uprobe_analyze_insn(struct arch_uprobe *auprobe,
        struct mm_struct *mm, unsigned long addr)
{

 return 0;
}
