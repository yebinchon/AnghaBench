
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int git_revwalk ;
typedef int git_pqueue ;
struct TYPE_8__ {unsigned int flags; unsigned int out_degree; struct TYPE_8__** parents; } ;
typedef TYPE_1__ git_commit_list_node ;
typedef int git_commit_list ;


 unsigned int PARENT1 ;
 unsigned int PARENT2 ;
 unsigned int RESULT ;
 unsigned int STALE ;
 int git_commit_list_free (int **) ;
 int * git_commit_list_insert (TYPE_1__*,int **) ;
 scalar_t__ git_commit_list_parse (int *,TYPE_1__*) ;
 int git_commit_list_time_cmp ;
 int git_pqueue_free (int *) ;
 scalar_t__ git_pqueue_init (int *,int ,int,int ) ;
 scalar_t__ git_pqueue_insert (int *,TYPE_1__*) ;
 TYPE_1__* git_pqueue_pop (int *) ;
 scalar_t__ interesting (int *,int *) ;

__attribute__((used)) static int mark_parents(git_revwalk *walk, git_commit_list_node *one,
 git_commit_list_node *two)
{
 unsigned int i;
 git_commit_list *roots = ((void*)0);
 git_pqueue list;


 if (one == two) {
  one->flags |= PARENT1 | PARENT2 | RESULT;
  return 0;
 }

 if (git_pqueue_init(&list, 0, 2, git_commit_list_time_cmp) < 0)
  return -1;

 if (git_commit_list_parse(walk, one) < 0)
  goto on_error;
 one->flags |= PARENT1;
 if (git_pqueue_insert(&list, one) < 0)
  goto on_error;

 if (git_commit_list_parse(walk, two) < 0)
  goto on_error;
 two->flags |= PARENT2;
 if (git_pqueue_insert(&list, two) < 0)
  goto on_error;


 while (interesting(&list, roots)) {
  git_commit_list_node *commit = git_pqueue_pop(&list);
  unsigned int flags;

  if (commit == ((void*)0))
   break;

  flags = commit->flags & (PARENT1 | PARENT2 | STALE);
  if (flags == (PARENT1 | PARENT2)) {
   if (!(commit->flags & RESULT))
    commit->flags |= RESULT;

   flags |= STALE;
  }

  for (i = 0; i < commit->out_degree; i++) {
   git_commit_list_node *p = commit->parents[i];
   if ((p->flags & flags) == flags)
    continue;

   if (git_commit_list_parse(walk, p) < 0)
    goto on_error;

   p->flags |= flags;
   if (git_pqueue_insert(&list, p) < 0)
    goto on_error;
  }


  if (commit->out_degree == 0) {
   if (git_commit_list_insert(commit, &roots) == ((void*)0))
    goto on_error;
  }
 }

 git_commit_list_free(&roots);
 git_pqueue_free(&list);
 return 0;

on_error:
 git_commit_list_free(&roots);
 git_pqueue_free(&list);
 return -1;
}
