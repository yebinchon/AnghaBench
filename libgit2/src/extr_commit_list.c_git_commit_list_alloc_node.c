
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int commit_pool; } ;
typedef TYPE_1__ git_revwalk ;
typedef int git_commit_list_node ;


 scalar_t__ git_pool_mallocz (int *,int) ;

git_commit_list_node *git_commit_list_alloc_node(git_revwalk *walk)
{
 return (git_commit_list_node *)git_pool_mallocz(&walk->commit_pool, 1);
}
