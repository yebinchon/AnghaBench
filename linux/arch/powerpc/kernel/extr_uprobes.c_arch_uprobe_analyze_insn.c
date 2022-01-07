
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
struct arch_uprobe {int dummy; } ;


 int EINVAL ;

int arch_uprobe_analyze_insn(struct arch_uprobe *auprobe,
  struct mm_struct *mm, unsigned long addr)
{
 if (addr & 0x03)
  return -EINVAL;

 return 0;
}
