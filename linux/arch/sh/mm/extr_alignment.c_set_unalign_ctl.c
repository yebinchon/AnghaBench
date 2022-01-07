
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int flags; } ;
struct task_struct {TYPE_1__ thread; } ;


 unsigned int SH_THREAD_UAC_MASK ;

int set_unalign_ctl(struct task_struct *tsk, unsigned int val)
{
 tsk->thread.flags = (tsk->thread.flags & ~SH_THREAD_UAC_MASK) |
       (val & SH_THREAD_UAC_MASK);
 return 0;
}
