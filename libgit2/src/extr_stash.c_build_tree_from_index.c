
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_tree ;
typedef int git_repository ;
typedef int git_oid ;
typedef int git_index ;


 int git_index_write_tree_to (int *,int *,int *) ;
 int git_tree_lookup (int **,int *,int *) ;

__attribute__((used)) static int build_tree_from_index(
 git_tree **out,
 git_repository *repo,
 git_index *index)
{
 int error;
 git_oid i_tree_oid;

 if ((error = git_index_write_tree_to(&i_tree_oid, index, repo)) < 0)
  return error;

 return git_tree_lookup(out, repo, &i_tree_oid);
}
