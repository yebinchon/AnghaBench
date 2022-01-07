
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_tree ;
typedef int git_repository ;
typedef int git_index ;
typedef int git_diff_options ;
typedef int git_diff ;


 int assert (int) ;
 int diff_load_index (int **,int *) ;
 int git_diff_free (int *) ;
 int git_diff_index_to_workdir (int **,int *,int *,int const*) ;
 int git_diff_merge (int *,int *) ;
 int git_diff_tree_to_index (int **,int *,int *,int *,int const*) ;

int git_diff_tree_to_workdir_with_index(
 git_diff **out,
 git_repository *repo,
 git_tree *tree,
 const git_diff_options *opts)
{
 git_diff *d1 = ((void*)0), *d2 = ((void*)0);
 git_index *index = ((void*)0);
 int error = 0;

 assert(out && repo);

 *out = ((void*)0);

 if ((error = diff_load_index(&index, repo)) < 0)
  return error;

 if (!(error = git_diff_tree_to_index(&d1, repo, tree, index, opts)) &&
  !(error = git_diff_index_to_workdir(&d2, repo, index, opts)))
  error = git_diff_merge(d1, d2);

 git_diff_free(d2);

 if (error) {
  git_diff_free(d1);
  d1 = ((void*)0);
 }

 *out = d1;
 return error;
}
