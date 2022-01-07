
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned short* addr; unsigned short inst; } ;
struct TYPE_4__ {TYPE_1__ breakinfo; } ;
struct task_struct {TYPE_2__ thread; } ;


 unsigned short BREAKINST ;
 int PT_PC ;
 scalar_t__ h8300_get_reg (struct task_struct*,int ) ;
 unsigned short* nextpc (struct task_struct*,unsigned short*) ;

void user_enable_single_step(struct task_struct *child)
{
 unsigned short *next;

 next = nextpc(child, (unsigned short *)h8300_get_reg(child, PT_PC));
 child->thread.breakinfo.addr = next;
 child->thread.breakinfo.inst = *next;
 *next = BREAKINST;
}
