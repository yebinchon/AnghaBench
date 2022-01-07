
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__* bytes; } ;
struct insn {scalar_t__ length; TYPE_1__ opcode; } ;
typedef int kprobe_opcode_t ;


 scalar_t__ BREAKPOINT_INSTRUCTION ;
 int MAX_INSN_SIZE ;
 int insn_get_length (struct insn*) ;
 int kallsyms_lookup_size_offset (unsigned long,int *,unsigned long*) ;
 int kernel_insn_init (struct insn*,void*,int) ;
 unsigned long recover_probed_instruction (int *,unsigned long) ;

__attribute__((used)) static int can_probe(unsigned long paddr)
{
 unsigned long addr, __addr, offset = 0;
 struct insn insn;
 kprobe_opcode_t buf[MAX_INSN_SIZE];

 if (!kallsyms_lookup_size_offset(paddr, ((void*)0), &offset))
  return 0;


 addr = paddr - offset;
 while (addr < paddr) {
  __addr = recover_probed_instruction(buf, addr);
  if (!__addr)
   return 0;
  kernel_insn_init(&insn, (void *)__addr, MAX_INSN_SIZE);
  insn_get_length(&insn);





  if (insn.opcode.bytes[0] == BREAKPOINT_INSTRUCTION)
   return 0;
  addr += insn.length;
 }

 return (addr == paddr);
}
