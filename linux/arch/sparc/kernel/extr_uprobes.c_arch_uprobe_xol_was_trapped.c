
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;



bool arch_uprobe_xol_was_trapped(struct task_struct *t)
{
 return 0;
}
