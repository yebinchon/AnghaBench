
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * insn; } ;
struct kprobe {TYPE_1__ ainsn; scalar_t__ addr; } ;


 int EILSEQ ;
 int EINVAL ;
 int ENOMEM ;
 scalar_t__ alternatives_text_reserved (scalar_t__,scalar_t__) ;
 int arch_copy_kprobe (struct kprobe*) ;
 int can_probe (unsigned long) ;
 int free_insn_slot (int *,int ) ;
 int * get_insn_slot () ;

int arch_prepare_kprobe(struct kprobe *p)
{
 int ret;

 if (alternatives_text_reserved(p->addr, p->addr))
  return -EINVAL;

 if (!can_probe((unsigned long)p->addr))
  return -EILSEQ;

 p->ainsn.insn = get_insn_slot();
 if (!p->ainsn.insn)
  return -ENOMEM;

 ret = arch_copy_kprobe(p);
 if (ret) {
  free_insn_slot(p->ainsn.insn, 0);
  p->ainsn.insn = ((void*)0);
 }

 return ret;
}
