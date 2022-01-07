
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftrace_insn {int disp; int opc; } ;


 int BREAKPOINT_INSTRUCTION ;
 int KPROBE_ON_FTRACE_NOP ;

__attribute__((used)) static inline void ftrace_generate_kprobe_nop_insn(struct ftrace_insn *insn)
{




}
