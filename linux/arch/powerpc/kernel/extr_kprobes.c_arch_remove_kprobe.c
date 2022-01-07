
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * insn; } ;
struct kprobe {TYPE_1__ ainsn; } ;


 int free_insn_slot (int *,int ) ;

void arch_remove_kprobe(struct kprobe *p)
{
 if (p->ainsn.insn) {
  free_insn_slot(p->ainsn.insn, 0);
  p->ainsn.insn = ((void*)0);
 }
}
