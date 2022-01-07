
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_tree_cache ;
typedef int git_tree ;
typedef int git_pool ;


 int git_tree_cache_new (int **,char*,int *) ;
 int read_tree_recursive (int *,int const*,int *) ;

int git_tree_cache_read_tree(git_tree_cache **out, const git_tree *tree, git_pool *pool)
{
 int error;
 git_tree_cache *cache;

 if ((error = git_tree_cache_new(&cache, "", pool)) < 0)
  return error;

 if ((error = read_tree_recursive(cache, tree, pool)) < 0)
  return error;

 *out = cache;
 return 0;
}
