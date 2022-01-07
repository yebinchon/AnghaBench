
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct func_info {unsigned int* insn_buf; int insn_index; } ;



__attribute__((used)) static void __do_emit_one(struct func_info * const fp, unsigned int insn)
{
 fp->insn_buf[fp->insn_index++] = insn;
}
