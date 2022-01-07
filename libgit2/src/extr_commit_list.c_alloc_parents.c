
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int commit_pool; } ;
typedef TYPE_1__ git_revwalk ;
typedef int git_commit_list_node ;


 size_t PARENTS_PER_COMMIT ;
 scalar_t__ git__multiply_sizet_overflow (size_t*,size_t,int) ;
 scalar_t__ git_pool_malloc (int *,size_t) ;

__attribute__((used)) static git_commit_list_node **alloc_parents(
 git_revwalk *walk, git_commit_list_node *commit, size_t n_parents)
{
 size_t bytes;

 if (n_parents <= PARENTS_PER_COMMIT)
  return (git_commit_list_node **)((char *)commit + sizeof(git_commit_list_node));

 if (git__multiply_sizet_overflow(&bytes, n_parents, sizeof(git_commit_list_node *)))
  return ((void*)0);

 return (git_commit_list_node **)git_pool_malloc(&walk->commit_pool, bytes);
}
