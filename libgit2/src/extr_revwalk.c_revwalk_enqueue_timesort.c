
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int iterator_time; } ;
typedef TYPE_1__ git_revwalk ;
typedef int git_commit_list_node ;


 int git_pqueue_insert (int *,int *) ;

__attribute__((used)) static int revwalk_enqueue_timesort(git_revwalk *walk, git_commit_list_node *commit)
{
 return git_pqueue_insert(&walk->iterator_time, commit);
}
