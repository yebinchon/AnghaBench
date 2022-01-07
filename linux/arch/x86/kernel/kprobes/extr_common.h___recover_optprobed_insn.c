
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kprobe_opcode_t ;



__attribute__((used)) static inline unsigned long __recover_optprobed_insn(kprobe_opcode_t *buf, unsigned long addr)
{
 return addr;
}
