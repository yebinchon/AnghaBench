
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_merge_options ;
typedef int git_iterator ;
typedef int git_index ;
typedef int git_annotated_commit ;


 int GIT_ENOTFOUND ;
 int compute_base (int **,int *,int *,int *,int const*,size_t) ;
 int git_annotated_commit_free (int *) ;
 int git_error_clear () ;
 int git_iterator_free (int *) ;
 int git_merge__iterators (int **,int *,int *,int *,int *,int const*) ;
 int iterator_for_annotated_commit (int **,int *) ;

__attribute__((used)) static int merge_annotated_commits(
 git_index **index_out,
 git_annotated_commit **base_out,
 git_repository *repo,
 git_annotated_commit *ours,
 git_annotated_commit *theirs,
 size_t recursion_level,
 const git_merge_options *opts)
{
 git_annotated_commit *base = ((void*)0);
 git_iterator *base_iter = ((void*)0), *our_iter = ((void*)0), *their_iter = ((void*)0);
 int error;

 if ((error = compute_base(&base, repo, ours, theirs, opts,
  recursion_level)) < 0) {

  if (error != GIT_ENOTFOUND)
   goto done;

  git_error_clear();
 }

 if ((error = iterator_for_annotated_commit(&base_iter, base)) < 0 ||
  (error = iterator_for_annotated_commit(&our_iter, ours)) < 0 ||
  (error = iterator_for_annotated_commit(&their_iter, theirs)) < 0 ||
  (error = git_merge__iterators(index_out, repo, base_iter, our_iter,
   their_iter, opts)) < 0)
  goto done;

 if (base_out) {
  *base_out = base;
  base = ((void*)0);
 }

done:
 git_annotated_commit_free(base);
 git_iterator_free(base_iter);
 git_iterator_free(our_iter);
 git_iterator_free(their_iter);
 return error;
}
