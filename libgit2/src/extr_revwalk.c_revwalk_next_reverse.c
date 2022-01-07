
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int iterator_reverse; } ;
typedef TYPE_1__ git_revwalk ;
typedef int git_commit_list_node ;


 int GIT_ITEROVER ;
 int * git_commit_list_pop (int *) ;

__attribute__((used)) static int revwalk_next_reverse(git_commit_list_node **object_out, git_revwalk *walk)
{
 *object_out = git_commit_list_pop(&walk->iterator_reverse);
 return *object_out ? 0 : GIT_ITEROVER;
}
