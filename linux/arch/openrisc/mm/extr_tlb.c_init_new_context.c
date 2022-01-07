
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct mm_struct {int context; } ;


 int NO_CONTEXT ;

int init_new_context(struct task_struct *tsk, struct mm_struct *mm)
{
 mm->context = NO_CONTEXT;
 return 0;
}
