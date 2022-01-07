
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * insn; } ;
struct kprobe {TYPE_1__ ainsn; int addr; } ;


 int free_insn_slot (int *,int ) ;
 int free_s390_insn_slot (int *,int ) ;
 scalar_t__ is_kernel_addr (int ) ;

__attribute__((used)) static void s390_free_insn_slot(struct kprobe *p)
{
 if (!p->ainsn.insn)
  return;
 if (is_kernel_addr(p->addr))
  free_s390_insn_slot(p->ainsn.insn, 0);
 else
  free_insn_slot(p->ainsn.insn, 0);
 p->ainsn.insn = ((void*)0);
}
