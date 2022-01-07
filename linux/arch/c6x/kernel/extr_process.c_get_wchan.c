
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long wchan; } ;
struct task_struct {TYPE_1__ thread; } ;



unsigned long get_wchan(struct task_struct *p)
{
 return p->thread.wchan;
}
