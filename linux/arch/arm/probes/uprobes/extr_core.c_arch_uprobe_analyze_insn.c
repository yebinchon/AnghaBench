
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
struct arch_uprobe {int simulate; unsigned int bpinsn; int asi; void** ixol; scalar_t__ insn; } ;
typedef enum probes_insn { ____Placeholder_probes_insn } probes_insn ;


 int EINVAL ;



 unsigned int UPROBE_SS_ARM_INSN ;
 int UPROBE_SWBP_ARM_INSN ;
 unsigned int __mem_to_opcode_arm (unsigned int) ;
 void* __opcode_to_mem_arm (unsigned int) ;
 int arm_probes_decode_insn (unsigned int,int *,int,int ,int *) ;
 int uprobes_probes_actions ;

int arch_uprobe_analyze_insn(struct arch_uprobe *auprobe, struct mm_struct *mm,
        unsigned long addr)
{
 unsigned int insn;
 unsigned int bpinsn;
 enum probes_insn ret;


 if (addr & 0x3)
  return -EINVAL;

 insn = __mem_to_opcode_arm(*(unsigned int *)auprobe->insn);
 auprobe->ixol[0] = __opcode_to_mem_arm(insn);
 auprobe->ixol[1] = __opcode_to_mem_arm(UPROBE_SS_ARM_INSN);

 ret = arm_probes_decode_insn(insn, &auprobe->asi, 0,
         uprobes_probes_actions, ((void*)0));
 switch (ret) {
 case 128:
  return -EINVAL;

 case 129:
  auprobe->simulate = 1;
  break;

 case 130:
 default:
  break;
 }

 bpinsn = UPROBE_SWBP_ARM_INSN & 0x0fffffff;
 if (insn >= 0xe0000000)
  bpinsn |= 0xe0000000;
 else
  bpinsn |= insn & 0xf0000000;

 auprobe->bpinsn = bpinsn;

 return 0;
}
