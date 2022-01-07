
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int is_ftrace_insn; int * insn; } ;
struct kprobe {int* addr; TYPE_1__ ainsn; int opcode; } ;
struct ftrace_insn {int dummy; } ;
typedef int s64 ;
typedef int s32 ;


 int ftrace_generate_nop_insn (struct ftrace_insn*) ;
 unsigned long ftrace_location (unsigned long) ;
 int insn_length (int) ;
 int memcpy (int *,int*,int ) ;
 int probe_is_insn_relative_long (int *) ;

__attribute__((used)) static void copy_instruction(struct kprobe *p)
{
 unsigned long ip = (unsigned long) p->addr;
 s64 disp, new_disp;
 u64 addr, new_addr;

 if (ftrace_location(ip) == ip) {






  ftrace_generate_nop_insn((struct ftrace_insn *)p->ainsn.insn);
  p->ainsn.is_ftrace_insn = 1;
 } else
  memcpy(p->ainsn.insn, p->addr, insn_length(*p->addr >> 8));
 p->opcode = p->ainsn.insn[0];
 if (!probe_is_insn_relative_long(p->ainsn.insn))
  return;







 disp = *(s32 *)&p->ainsn.insn[1];
 addr = (u64)(unsigned long)p->addr;
 new_addr = (u64)(unsigned long)p->ainsn.insn;
 new_disp = ((addr + (disp * 2)) - new_addr) / 2;
 *(s32 *)&p->ainsn.insn[1] = new_disp;
}
