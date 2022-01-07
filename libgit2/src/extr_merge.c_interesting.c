
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_pqueue ;
struct TYPE_3__ {int flags; } ;
typedef TYPE_1__ git_commit_list_node ;


 int STALE ;
 TYPE_1__* git_pqueue_get (int *,size_t) ;
 size_t git_pqueue_size (int *) ;

__attribute__((used)) static int interesting(git_pqueue *list)
{
 size_t i;

 for (i = 0; i < git_pqueue_size(list); i++) {
  git_commit_list_node *commit = git_pqueue_get(list, i);
  if ((commit->flags & STALE) == 0)
   return 1;
 }

 return 0;
}
