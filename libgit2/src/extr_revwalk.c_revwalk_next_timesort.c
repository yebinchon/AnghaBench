
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int iterator_time; } ;
typedef TYPE_1__ git_revwalk ;
struct TYPE_7__ {int uninteresting; } ;
typedef TYPE_2__ git_commit_list_node ;


 int GIT_ITEROVER ;
 int git_error_clear () ;
 TYPE_2__* git_pqueue_pop (int *) ;

__attribute__((used)) static int revwalk_next_timesort(git_commit_list_node **object_out, git_revwalk *walk)
{
 git_commit_list_node *next;

 while ((next = git_pqueue_pop(&walk->iterator_time)) != ((void*)0)) {

  if (!next->uninteresting) {
   *object_out = next;
   return 0;
  }
 }

 git_error_clear();
 return GIT_ITEROVER;
}
