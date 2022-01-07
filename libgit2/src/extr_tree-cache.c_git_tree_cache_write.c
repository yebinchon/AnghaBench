
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_tree_cache ;
typedef int git_buf ;


 scalar_t__ git_buf_oom (int *) ;
 int write_tree (int *,int *) ;

int git_tree_cache_write(git_buf *out, git_tree_cache *tree)
{
 write_tree(out, tree);

 return git_buf_oom(out) ? -1 : 0;
}
