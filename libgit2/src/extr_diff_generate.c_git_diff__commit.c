
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_tree ;
typedef int git_repository ;
typedef int git_diff_options ;
typedef int git_diff ;
typedef int const git_commit ;


 int GIT_ERROR_INVALID ;
 int GIT_OID_HEXSZ ;
 int git_commit_free (int const*) ;
 int git_commit_id (int const*) ;
 int git_commit_parent (int const**,int const*,int ) ;
 size_t git_commit_parentcount (int const*) ;
 int git_commit_tree (int **,int const*) ;
 int git_diff_tree_to_tree (int **,int *,int *,int *,int const*) ;
 int git_error_set (int ,char*,int ) ;
 int git_oid_tostr (char*,int,int ) ;
 int git_tree_free (int *) ;

int git_diff__commit(
 git_diff **out,
 git_repository *repo,
 const git_commit *commit,
 const git_diff_options *opts)
{
 git_commit *parent = ((void*)0);
 git_diff *commit_diff = ((void*)0);
 git_tree *old_tree = ((void*)0), *new_tree = ((void*)0);
 size_t parents;
 int error = 0;

 *out = ((void*)0);

 if ((parents = git_commit_parentcount(commit)) > 1) {
  char commit_oidstr[GIT_OID_HEXSZ + 1];

  error = -1;
  git_error_set(GIT_ERROR_INVALID, "commit %s is a merge commit",
   git_oid_tostr(commit_oidstr, GIT_OID_HEXSZ + 1, git_commit_id(commit)));
  goto on_error;
 }

 if (parents > 0)
  if ((error = git_commit_parent(&parent, commit, 0)) < 0 ||
   (error = git_commit_tree(&old_tree, parent)) < 0)
    goto on_error;

 if ((error = git_commit_tree(&new_tree, commit)) < 0 ||
  (error = git_diff_tree_to_tree(&commit_diff, repo, old_tree, new_tree, opts)) < 0)
   goto on_error;

 *out = commit_diff;

on_error:
 git_tree_free(new_tree);
 git_tree_free(old_tree);
 git_commit_free(parent);

 return error;
}
