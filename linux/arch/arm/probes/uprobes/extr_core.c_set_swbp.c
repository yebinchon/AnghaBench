
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
struct arch_uprobe {int bpinsn; } ;


 int __opcode_to_mem_arm (int ) ;
 int uprobe_write_opcode (struct arch_uprobe*,struct mm_struct*,unsigned long,int ) ;

int set_swbp(struct arch_uprobe *auprobe, struct mm_struct *mm,
      unsigned long vaddr)
{
 return uprobe_write_opcode(auprobe, mm, vaddr,
     __opcode_to_mem_arm(auprobe->bpinsn));
}
