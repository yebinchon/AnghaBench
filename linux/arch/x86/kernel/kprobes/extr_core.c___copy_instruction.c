
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {scalar_t__ value; } ;
struct TYPE_3__ {scalar_t__* bytes; } ;
struct insn {int length; TYPE_2__ displacement; TYPE_1__ opcode; } ;
typedef int s64 ;
typedef scalar_t__ s32 ;
typedef int kprobe_opcode_t ;


 scalar_t__ BREAKPOINT_INSTRUCTION ;
 int MAX_INSN_SIZE ;
 int insn_get_length (struct insn*) ;
 scalar_t__ insn_masking_exception (struct insn*) ;
 int insn_offset_displacement (struct insn*) ;
 scalar_t__ insn_rip_relative (struct insn*) ;
 int kernel_insn_init (struct insn*,int *,int) ;
 int pr_err (char*,int) ;
 scalar_t__ probe_kernel_read (int *,void*,int) ;
 unsigned long recover_probed_instruction (int *,unsigned long) ;

int __copy_instruction(u8 *dest, u8 *src, u8 *real, struct insn *insn)
{
 kprobe_opcode_t buf[MAX_INSN_SIZE];
 unsigned long recovered_insn =
  recover_probed_instruction(buf, (unsigned long)src);

 if (!recovered_insn || !insn)
  return 0;


 if (probe_kernel_read(dest, (void *)recovered_insn, MAX_INSN_SIZE))
  return 0;

 kernel_insn_init(insn, dest, MAX_INSN_SIZE);
 insn_get_length(insn);


 if (insn->opcode.bytes[0] == BREAKPOINT_INSTRUCTION)
  return 0;


 if (insn_masking_exception(insn))
  return 0;
 return insn->length;
}
