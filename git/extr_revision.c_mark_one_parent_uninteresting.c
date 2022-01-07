
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct commit_stack {int dummy; } ;
struct commit_list {int item; struct commit_list* next; } ;
struct TYPE_2__ {int flags; } ;
struct commit {struct commit_list* parents; TYPE_1__ object; } ;


 int UNINTERESTING ;
 int commit_stack_push (struct commit_stack*,int ) ;

__attribute__((used)) static void mark_one_parent_uninteresting(struct commit *commit,
       struct commit_stack *pending)
{
 struct commit_list *l;

 if (commit->object.flags & UNINTERESTING)
  return;
 commit->object.flags |= UNINTERESTING;
 for (l = commit->parents; l; l = l->next)
  commit_stack_push(pending, l->item);
}
