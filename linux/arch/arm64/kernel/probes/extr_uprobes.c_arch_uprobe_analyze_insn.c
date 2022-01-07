
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct mm_struct {TYPE_1__ context; } ;
struct arch_uprobe {int simulate; int api; int * insn; } ;
typedef int probe_opcode_t ;


 int AARCH64_INSN_SIZE ;
 int EINVAL ;
 int ENOTSUPP ;


 int IS_ALIGNED (unsigned long,int ) ;
 int MMCF_AARCH32 ;
 int arm_probe_decode_insn (int ,int *) ;

int arch_uprobe_analyze_insn(struct arch_uprobe *auprobe, struct mm_struct *mm,
  unsigned long addr)
{
 probe_opcode_t insn;


 if (mm->context.flags & MMCF_AARCH32)
  return -ENOTSUPP;
 else if (!IS_ALIGNED(addr, AARCH64_INSN_SIZE))
  return -EINVAL;

 insn = *(probe_opcode_t *)(&auprobe->insn[0]);

 switch (arm_probe_decode_insn(insn, &auprobe->api)) {
 case 128:
  return -EINVAL;

 case 129:
  auprobe->simulate = 1;
  break;

 default:
  break;
 }

 return 0;
}
