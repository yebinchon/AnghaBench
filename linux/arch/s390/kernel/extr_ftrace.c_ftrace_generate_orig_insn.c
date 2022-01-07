
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftrace_insn {int opc; int disp; } ;



__attribute__((used)) static inline void ftrace_generate_orig_insn(struct ftrace_insn *insn)
{






 insn->opc = 0xe3e0;
 insn->disp = 0xf0080024;

}
