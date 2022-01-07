
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct func_info {scalar_t__ force_emit; scalar_t__ insn_index; } ;


 int dst_insn_append (struct func_info* const) ;

__attribute__((used)) static void end_emit(struct func_info * const fp)
{
 if (fp->insn_index || fp->force_emit)
  dst_insn_append(fp);
}
