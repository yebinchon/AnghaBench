
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct TYPE_2__ {int id; } ;
struct mm_struct {TYPE_1__ context; } ;


 int __init_new_context () ;

int init_new_context(struct task_struct *t, struct mm_struct *mm)
{
 mm->context.id = __init_new_context();

 return 0;
}
