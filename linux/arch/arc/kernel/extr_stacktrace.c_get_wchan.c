
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int __get_first_nonsched ;
 unsigned int arc_unwind_core (struct task_struct*,int *,int ,int *) ;

unsigned int get_wchan(struct task_struct *tsk)
{
 return arc_unwind_core(tsk, ((void*)0), __get_first_nonsched, ((void*)0));
}
