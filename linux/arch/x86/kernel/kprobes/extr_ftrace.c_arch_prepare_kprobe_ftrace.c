
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int boostable; int * insn; } ;
struct kprobe {TYPE_1__ ainsn; } ;



int arch_prepare_kprobe_ftrace(struct kprobe *p)
{
 p->ainsn.insn = ((void*)0);
 p->ainsn.boostable = 0;
 return 0;
}
