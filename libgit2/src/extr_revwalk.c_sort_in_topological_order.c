
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_9__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int * git_vector_cmp ;
struct TYPE_12__ {int sorting; } ;
typedef TYPE_1__ git_revwalk ;
typedef int git_pqueue ;
struct TYPE_13__ {int in_degree; unsigned short out_degree; struct TYPE_13__** parents; } ;
typedef TYPE_2__ git_commit_list_node ;
struct TYPE_14__ {TYPE_2__* item; struct TYPE_14__* next; } ;
typedef TYPE_3__ git_commit_list ;
struct TYPE_15__ {TYPE_3__* next; } ;


 int GIT_SORT_TIME ;
 TYPE_9__* git_commit_list_insert (TYPE_2__*,TYPE_3__**) ;
 int * git_commit_list_time_cmp ;
 int git_pqueue_free (int *) ;
 int git_pqueue_init (int *,int ,int,int *) ;
 int git_pqueue_insert (int *,TYPE_2__*) ;
 TYPE_2__* git_pqueue_pop (int *) ;
 int git_pqueue_reverse (int *) ;

__attribute__((used)) static int sort_in_topological_order(git_commit_list **out, git_revwalk *walk, git_commit_list *list)
{
 git_commit_list *ll = ((void*)0), *newlist, **pptr;
 git_commit_list_node *next;
 git_pqueue queue;
 git_vector_cmp queue_cmp = ((void*)0);
 unsigned short i;
 int error;

 if (walk->sorting & GIT_SORT_TIME)
  queue_cmp = git_commit_list_time_cmp;

 if ((error = git_pqueue_init(&queue, 0, 8, queue_cmp)))
  return error;







 for (ll = list; ll; ll = ll->next) {
  ll->item->in_degree = 1;
 }






 for(ll = list; ll; ll = ll->next) {
  for (i = 0; i < ll->item->out_degree; ++i) {
   git_commit_list_node *parent = ll->item->parents[i];
   if (parent->in_degree)
    parent->in_degree++;
  }
 }





 for(ll = list; ll; ll = ll->next) {
  if (ll->item->in_degree == 1) {
   if ((error = git_pqueue_insert(&queue, ll->item)))
    goto cleanup;
  }
 }






 if ((walk->sorting & GIT_SORT_TIME) == 0)
  git_pqueue_reverse(&queue);


 pptr = &newlist;
 newlist = ((void*)0);
 while ((next = git_pqueue_pop(&queue)) != ((void*)0)) {
  for (i = 0; i < next->out_degree; ++i) {
   git_commit_list_node *parent = next->parents[i];
   if (parent->in_degree == 0)
    continue;

   if (--parent->in_degree == 1) {
    if ((error = git_pqueue_insert(&queue, parent)))
     goto cleanup;
   }
  }


  next->in_degree = 0;

  pptr = &git_commit_list_insert(next, pptr)->next;
 }

 *out = newlist;
 error = 0;

cleanup:
 git_pqueue_free(&queue);
 return error;
}
