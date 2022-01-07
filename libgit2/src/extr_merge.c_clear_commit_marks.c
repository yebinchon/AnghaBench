
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_commit_list_node ;
typedef int git_commit_list ;


 scalar_t__ clear_commit_marks_1 (int **,int ,unsigned int) ;
 int * git_commit_list_insert (int *,int **) ;
 int git_commit_list_pop (int **) ;

__attribute__((used)) static int clear_commit_marks(git_commit_list_node *commit, unsigned int mark)
{
 git_commit_list *list = ((void*)0);
 if (git_commit_list_insert(commit, &list) == ((void*)0))
  return -1;
 while (list)
  if (clear_commit_marks_1(&list, git_commit_list_pop(&list), mark) < 0)
   return -1;
 return 0;
}
