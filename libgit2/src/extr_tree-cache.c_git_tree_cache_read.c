
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_tree_cache ;
typedef int git_pool ;


 int GIT_ERROR_INDEX ;
 int git_error_set (int ,char*) ;
 scalar_t__ read_tree_internal (int **,char const**,char const*,int *) ;

int git_tree_cache_read(git_tree_cache **tree, const char *buffer, size_t buffer_size, git_pool *pool)
{
 const char *buffer_end = buffer + buffer_size;

 if (read_tree_internal(tree, &buffer, buffer_end, pool) < 0)
  return -1;

 if (buffer < buffer_end) {
  git_error_set(GIT_ERROR_INDEX, "corrupted TREE extension in index (unexpected trailing data)");
  return -1;
 }

 return 0;
}
