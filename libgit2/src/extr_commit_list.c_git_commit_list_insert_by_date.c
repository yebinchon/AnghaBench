
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int git_commit_list_node ;
struct TYPE_6__ {struct TYPE_6__* next; int item; } ;
typedef TYPE_1__ git_commit_list ;


 TYPE_1__* git_commit_list_insert (int *,TYPE_1__**) ;
 scalar_t__ git_commit_list_time_cmp (int ,int *) ;

git_commit_list *git_commit_list_insert_by_date(git_commit_list_node *item, git_commit_list **list_p)
{
 git_commit_list **pp = list_p;
 git_commit_list *p;

 while ((p = *pp) != ((void*)0)) {
  if (git_commit_list_time_cmp(p->item, item) > 0)
   break;

  pp = &p->next;
 }

 return git_commit_list_insert(item, pp);
}
