
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int git_pqueue ;
struct TYPE_6__ {int flags; int out_degree; struct TYPE_6__** parents; } ;
typedef TYPE_1__ git_commit_list_node ;


 int PARENT1 ;
 int PARENT2 ;
 int RESULT ;
 int git_commit_list_time_cmp ;
 int git_pqueue_free (int *) ;
 scalar_t__ git_pqueue_init (int *,int ,int,int ) ;
 int git_pqueue_insert (int *,TYPE_1__*) ;
 TYPE_1__* git_pqueue_pop (int *) ;

__attribute__((used)) static int ahead_behind(git_commit_list_node *one, git_commit_list_node *two,
 size_t *ahead, size_t *behind)
{
 git_commit_list_node *commit;
 git_pqueue pq;
 int error = 0, i;
 *ahead = 0;
 *behind = 0;

 if (git_pqueue_init(&pq, 0, 2, git_commit_list_time_cmp) < 0)
  return -1;

 if ((error = git_pqueue_insert(&pq, one)) < 0 ||
  (error = git_pqueue_insert(&pq, two)) < 0)
  goto done;

 while ((commit = git_pqueue_pop(&pq)) != ((void*)0)) {
  if (commit->flags & RESULT ||
   (commit->flags & (PARENT1 | PARENT2)) == (PARENT1 | PARENT2))
   continue;
  else if (commit->flags & PARENT1)
   (*ahead)++;
  else if (commit->flags & PARENT2)
   (*behind)++;

  for (i = 0; i < commit->out_degree; i++) {
   git_commit_list_node *p = commit->parents[i];
   if ((error = git_pqueue_insert(&pq, p)) < 0)
    goto done;
  }
  commit->flags |= RESULT;
 }

done:
 git_pqueue_free(&pq);
 return error;
}
