
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int __entry_task ;
 int __this_cpu_write (int ,struct task_struct*) ;

__attribute__((used)) static void entry_task_switch(struct task_struct *next)
{
 __this_cpu_write(__entry_task, next);
}
