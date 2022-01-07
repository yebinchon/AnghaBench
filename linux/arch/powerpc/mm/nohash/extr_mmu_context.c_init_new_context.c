
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct TYPE_2__ {scalar_t__ id; scalar_t__ active; } ;
struct mm_struct {TYPE_1__ context; } ;


 scalar_t__ MMU_NO_CONTEXT ;
 int pr_hard (char*,struct mm_struct*) ;
 int pte_frag_set (TYPE_1__*,int *) ;
 int slice_init_new_context_exec (struct mm_struct*) ;

int init_new_context(struct task_struct *t, struct mm_struct *mm)
{
 pr_hard("initing context for mm @%p\n", mm);
 if (mm->context.id == 0)
  slice_init_new_context_exec(mm);
 mm->context.id = MMU_NO_CONTEXT;
 mm->context.active = 0;
 pte_frag_set(&mm->context, ((void*)0));
 return 0;
}
