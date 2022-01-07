
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kprobe {int dummy; } ;


 int s390_free_insn_slot (struct kprobe*) ;

void arch_remove_kprobe(struct kprobe *p)
{
 s390_free_insn_slot(p);
}
