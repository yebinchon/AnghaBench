
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct src_insn {struct src_insn* next; } ;
struct func_info {TYPE_1__* first; } ;
struct TYPE_2__ {struct src_insn* next; } ;


 int Z_Free (struct src_insn*) ;

__attribute__((used)) static void free_source_insns(struct func_info * const fp)
{
 struct src_insn *sp = fp->first->next;

 while (sp) {
  struct src_insn *next = sp->next;
  Z_Free(sp);
  sp = next;
 }
}
