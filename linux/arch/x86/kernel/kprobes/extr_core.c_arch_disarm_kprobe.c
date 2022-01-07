
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kprobe {int opcode; int addr; } ;


 int text_poke (int ,int *,int) ;

void arch_disarm_kprobe(struct kprobe *p)
{
 text_poke(p->addr, &p->opcode, 1);
}
