
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_commit_list_node ;
struct TYPE_4__ {struct TYPE_4__* next; int * item; } ;
typedef TYPE_1__ git_commit_list ;


 int git__free (TYPE_1__*) ;

git_commit_list_node *git_commit_list_pop(git_commit_list **stack)
{
 git_commit_list *top = *stack;
 git_commit_list_node *item = top ? top->item : ((void*)0);

 if (top) {
  *stack = top->next;
  git__free(top);
 }
 return item;
}
