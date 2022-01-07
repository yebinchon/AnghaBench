
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ fault_code; } ;
struct task_struct {TYPE_1__ thread; } ;


 scalar_t__ UPROBE_INV_FAULT_CODE ;

bool arch_uprobe_xol_was_trapped(struct task_struct *t)
{





 if (t->thread.fault_code != UPROBE_INV_FAULT_CODE)
  return 1;

 return 0;
}
