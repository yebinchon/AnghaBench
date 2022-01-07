
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int flags; unsigned int out_degree; struct TYPE_4__** parents; } ;
typedef TYPE_1__ git_commit_list_node ;
typedef int git_commit_list ;


 int * git_commit_list_insert (TYPE_1__*,int **) ;

__attribute__((used)) static int clear_commit_marks_1(git_commit_list **plist,
  git_commit_list_node *commit, unsigned int mark)
{
 while (commit) {
  unsigned int i;

  if (!(mark & commit->flags))
   return 0;

  commit->flags &= ~mark;

  for (i = 1; i < commit->out_degree; i++) {
   git_commit_list_node *p = commit->parents[i];
   if (git_commit_list_insert(p, plist) == ((void*)0))
    return -1;
  }

  commit = commit->out_degree ? commit->parents[0] : ((void*)0);
 }

 return 0;
}
