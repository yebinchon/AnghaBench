
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * insn; } ;
struct kprobe {TYPE_1__ ainsn; int addr; } ;


 int ENOMEM ;
 int * get_insn_slot () ;
 int * get_s390_insn_slot () ;
 scalar_t__ is_kernel_addr (int ) ;
 scalar_t__ is_module_addr (int ) ;

__attribute__((used)) static int s390_get_insn_slot(struct kprobe *p)
{





 p->ainsn.insn = ((void*)0);
 if (is_kernel_addr(p->addr))
  p->ainsn.insn = get_s390_insn_slot();
 else if (is_module_addr(p->addr))
  p->ainsn.insn = get_insn_slot();
 return p->ainsn.insn ? 0 : -ENOMEM;
}
