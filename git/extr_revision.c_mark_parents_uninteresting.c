
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct commit_stack {scalar_t__ nr; } ;
struct commit_list {int item; struct commit_list* next; } ;
struct commit {struct commit_list* parents; } ;


 struct commit_stack COMMIT_STACK_INIT ;
 int commit_stack_clear (struct commit_stack*) ;
 int commit_stack_pop (struct commit_stack*) ;
 int mark_one_parent_uninteresting (int ,struct commit_stack*) ;

void mark_parents_uninteresting(struct commit *commit)
{
 struct commit_stack pending = COMMIT_STACK_INIT;
 struct commit_list *l;

 for (l = commit->parents; l; l = l->next)
  mark_one_parent_uninteresting(l->item, &pending);

 while (pending.nr > 0)
  mark_one_parent_uninteresting(commit_stack_pop(&pending),
           &pending);

 commit_stack_clear(&pending);
}
