
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int iterator_rand; } ;
typedef TYPE_1__ git_revwalk ;
typedef int git_commit_list_node ;


 scalar_t__ git_commit_list_insert (int *,int *) ;

__attribute__((used)) static int revwalk_enqueue_unsorted(git_revwalk *walk, git_commit_list_node *commit)
{
 return git_commit_list_insert(commit, &walk->iterator_rand) ? 0 : -1;
}
