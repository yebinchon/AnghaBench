
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ git_commit_list ;


 int git__free (TYPE_1__*) ;

void git_commit_list_free(git_commit_list **list_p)
{
 git_commit_list *list = *list_p;

 if (list == ((void*)0))
  return;

 while (list) {
  git_commit_list *temp = list;
  list = temp->next;
  git__free(temp);
 }

 *list_p = ((void*)0);
}
