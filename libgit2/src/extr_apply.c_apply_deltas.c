
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_strmap ;
typedef int git_repository ;
typedef int git_reader ;
typedef int git_index ;
typedef int git_diff ;
typedef int git_apply_options ;


 int apply_one (int *,int *,int *,int *,int *,int *,int *,size_t,int const*) ;
 size_t git_diff_num_deltas (int *) ;
 int git_strmap_free (int *) ;
 scalar_t__ git_strmap_new (int **) ;

__attribute__((used)) static int apply_deltas(
 git_repository *repo,
 git_reader *pre_reader,
 git_index *preimage,
 git_reader *post_reader,
 git_index *postimage,
 git_diff *diff,
 const git_apply_options *opts)
{
 git_strmap *removed_paths;
 size_t i;
 int error = 0;

 if (git_strmap_new(&removed_paths) < 0)
  return -1;

 for (i = 0; i < git_diff_num_deltas(diff); i++) {
  if ((error = apply_one(repo, pre_reader, preimage, post_reader, postimage, diff, removed_paths, i, opts)) < 0)
   goto done;
 }

done:
 git_strmap_free(removed_paths);
 return error;
}
