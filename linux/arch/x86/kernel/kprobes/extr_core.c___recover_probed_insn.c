
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kprobe {int opcode; } ;
typedef int kprobe_opcode_t ;


 int MAX_INSN_SIZE ;
 size_t NOP_ATOMIC5 ;
 scalar_t__ WARN_ON (int) ;
 unsigned long ftrace_location (unsigned long) ;
 struct kprobe* get_kprobe (void*) ;
 int * ideal_nops ;
 int memcpy (int *,int ,int) ;
 scalar_t__ probe_kernel_read (int *,void*,int) ;

__attribute__((used)) static unsigned long
__recover_probed_insn(kprobe_opcode_t *buf, unsigned long addr)
{
 struct kprobe *kp;
 unsigned long faddr;

 kp = get_kprobe((void *)addr);
 faddr = ftrace_location(addr);





 if (WARN_ON(faddr && faddr != addr))
  return 0UL;




 if (!kp && !faddr)
  return addr;
 if (probe_kernel_read(buf, (void *)addr,
  MAX_INSN_SIZE * sizeof(kprobe_opcode_t)))
  return 0UL;

 if (faddr)
  memcpy(buf, ideal_nops[NOP_ATOMIC5], 5);
 else
  buf[0] = kp->opcode;
 return (unsigned long)buf;
}
