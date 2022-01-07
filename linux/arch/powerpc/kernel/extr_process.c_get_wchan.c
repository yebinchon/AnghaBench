
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 unsigned long __get_wchan (struct task_struct*) ;
 int put_task_stack (struct task_struct*) ;
 int try_get_task_stack (struct task_struct*) ;

unsigned long get_wchan(struct task_struct *p)
{
 unsigned long ret;

 if (!try_get_task_stack(p))
  return 0;

 ret = __get_wchan(p);

 put_task_stack(p);

 return ret;
}
