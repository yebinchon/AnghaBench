
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_commit_list_node ;
struct TYPE_5__ {struct TYPE_5__* next; int * item; } ;
typedef TYPE_1__ git_commit_list ;


 TYPE_1__* git__malloc (int) ;

git_commit_list *git_commit_list_insert(git_commit_list_node *item, git_commit_list **list_p)
{
 git_commit_list *new_list = git__malloc(sizeof(git_commit_list));
 if (new_list != ((void*)0)) {
  new_list->item = item;
  new_list->next = *list_p;
 }
 *list_p = new_list;
 return new_list;
}
