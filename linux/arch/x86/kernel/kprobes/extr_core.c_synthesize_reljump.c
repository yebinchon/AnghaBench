
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RELATIVEJUMP_OPCODE ;
 int __synthesize_relative_insn (void*,void*,void*,int ) ;

void synthesize_reljump(void *dest, void *from, void *to)
{
 __synthesize_relative_insn(dest, from, to, RELATIVEJUMP_OPCODE);
}
