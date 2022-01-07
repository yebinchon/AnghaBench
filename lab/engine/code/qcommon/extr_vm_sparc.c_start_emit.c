
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct func_info {int saved_icount; scalar_t__ force_emit; scalar_t__ insn_index; } ;



__attribute__((used)) static void start_emit(struct func_info * const fp, int i_count)
{
 fp->saved_icount = i_count;
 fp->insn_index = 0;
 fp->force_emit = 0;
}
