
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct func_info {struct dst_insn* dst_last; struct dst_insn* dst_first; } ;
struct dst_insn {struct dst_insn* next; } ;



__attribute__((used)) static void dst_insn_insert_tail(struct func_info * const fp,
     struct dst_insn *dp)
{
 if (!fp->dst_first) {
  fp->dst_first = fp->dst_last = dp;
 } else {
  fp->dst_last->next = dp;
  fp->dst_last = dp;
 }
}
