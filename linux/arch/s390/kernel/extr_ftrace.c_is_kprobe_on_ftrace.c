
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftrace_insn {scalar_t__ opc; } ;


 scalar_t__ BREAKPOINT_INSTRUCTION ;

__attribute__((used)) static inline int is_kprobe_on_ftrace(struct ftrace_insn *insn)
{




 return 0;
}
