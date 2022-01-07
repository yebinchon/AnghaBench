
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned short out_degree; int uninteresting; struct TYPE_5__** parents; } ;
typedef TYPE_1__ git_commit_list_node ;
typedef int git_commit_list ;


 int git_commit_list_insert (TYPE_1__*,int **) ;
 TYPE_1__* git_commit_list_pop (int **) ;

__attribute__((used)) static void mark_parents_uninteresting(git_commit_list_node *commit)
{
 unsigned short i;
 git_commit_list *parents = ((void*)0);

 for (i = 0; i < commit->out_degree; i++)
  git_commit_list_insert(commit->parents[i], &parents);


 while (parents) {
  commit = git_commit_list_pop(&parents);

  while (commit) {
   if (commit->uninteresting)
    break;

   commit->uninteresting = 1;





   if (!commit->parents)
    break;

   for (i = 0; i < commit->out_degree; i++)
    git_commit_list_insert(commit->parents[i], &parents);
   commit = commit->parents[0];
  }
 }
}
