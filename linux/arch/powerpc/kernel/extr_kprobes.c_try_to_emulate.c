
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct TYPE_2__ {unsigned int* insn; int boostable; } ;
struct kprobe {TYPE_1__ ainsn; } ;


 int BUG () ;
 int emulate_step (struct pt_regs*,unsigned int) ;
 int printk (char*,unsigned int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int try_to_emulate(struct kprobe *p, struct pt_regs *regs)
{
 int ret;
 unsigned int insn = *p->ainsn.insn;


 ret = emulate_step(regs, insn);
 if (ret > 0) {




  if (unlikely(p->ainsn.boostable == 0))
   p->ainsn.boostable = 1;
 } else if (ret < 0) {





  printk("Can't step on instruction %x\n", insn);
  BUG();
 } else {
  if (unlikely(p->ainsn.boostable != 1))
   p->ainsn.boostable = -1;
 }

 return ret;
}
