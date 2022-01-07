
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jump_insn {int dummy; } ;
struct func_info {size_t saved_icount; struct dst_insn** dst_by_i_count; int dst_count; } ;
struct dst_insn {unsigned int length; size_t i_count; int * next; scalar_t__ count; struct jump_insn* jump; } ;


 size_t THUNK_ICOUNT ;
 struct dst_insn* Z_Malloc (int) ;

__attribute__((used)) static struct dst_insn *dst_new(struct func_info * const fp, unsigned int length,
    struct jump_insn *jp, int insns_size)
{
 struct dst_insn *dp = Z_Malloc(sizeof(struct dst_insn) + insns_size);

 dp->length = length;
 dp->jump = jp;
 dp->count = fp->dst_count++;
 dp->i_count = fp->saved_icount;
 dp->next = ((void*)0);
 if (fp->saved_icount != THUNK_ICOUNT)
  fp->dst_by_i_count[fp->saved_icount] = dp;

 return dp;
}
