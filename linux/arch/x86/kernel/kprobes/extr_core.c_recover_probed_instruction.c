
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kprobe_opcode_t ;


 unsigned long __recover_optprobed_insn (int *,unsigned long) ;
 unsigned long __recover_probed_insn (int *,unsigned long) ;

unsigned long recover_probed_instruction(kprobe_opcode_t *buf, unsigned long addr)
{
 unsigned long __addr;

 __addr = __recover_optprobed_insn(buf, addr);
 if (__addr != addr)
  return __addr;

 return __recover_probed_insn(buf, addr);
}
