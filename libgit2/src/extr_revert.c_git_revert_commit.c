
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_tree ;
typedef int git_repository ;
typedef int git_merge_options ;
typedef int git_index ;
typedef int git_commit ;


 int assert (int ) ;
 int git_commit_free (int *) ;
 int git_commit_parent (int **,int *,int) ;
 int git_commit_parentcount (int *) ;
 int git_commit_tree (int **,int *) ;
 int git_merge_trees (int **,int *,int *,int *,int *,int const*) ;
 int git_tree_free (int *) ;
 int revert_seterr (int *,char*) ;

int git_revert_commit(
 git_index **out,
 git_repository *repo,
 git_commit *revert_commit,
 git_commit *our_commit,
 unsigned int mainline,
 const git_merge_options *merge_opts)
{
 git_commit *parent_commit = ((void*)0);
 git_tree *parent_tree = ((void*)0), *our_tree = ((void*)0), *revert_tree = ((void*)0);
 int parent = 0, error = 0;

 assert(out && repo && revert_commit && our_commit);

 if (git_commit_parentcount(revert_commit) > 1) {
  if (!mainline)
   return revert_seterr(revert_commit,
    "mainline branch is not specified but %s is a merge commit");

  parent = mainline;
 } else {
  if (mainline)
   return revert_seterr(revert_commit,
    "mainline branch specified but %s is not a merge commit");

  parent = git_commit_parentcount(revert_commit);
 }

 if (parent &&
  ((error = git_commit_parent(&parent_commit, revert_commit, (parent - 1))) < 0 ||
  (error = git_commit_tree(&parent_tree, parent_commit)) < 0))
  goto done;

 if ((error = git_commit_tree(&revert_tree, revert_commit)) < 0 ||
  (error = git_commit_tree(&our_tree, our_commit)) < 0)
  goto done;

 error = git_merge_trees(out, repo, revert_tree, our_tree, parent_tree, merge_opts);

done:
 git_tree_free(parent_tree);
 git_tree_free(our_tree);
 git_tree_free(revert_tree);
 git_commit_free(parent_commit);

 return error;
}
