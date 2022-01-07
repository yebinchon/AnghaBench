
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_tree ;
typedef int git_diff_options ;
typedef int git_diff ;
typedef int git_commit ;


 int check_lg2 (int ,char*,int *) ;
 int git_commit_free (int *) ;
 int git_commit_owner (int *) ;
 int git_commit_parent (int **,int *,size_t) ;
 int git_commit_tree (int **,int *) ;
 int git_diff_free (int *) ;
 scalar_t__ git_diff_num_deltas (int *) ;
 int git_diff_tree_to_tree (int **,int ,int *,int *,int *) ;
 int git_tree_free (int *) ;

__attribute__((used)) static int match_with_parent(git_commit *commit, int i, git_diff_options *opts)
{
 git_commit *parent;
 git_tree *a, *b;
 git_diff *diff;
 int ndeltas;

 check_lg2(
  git_commit_parent(&parent, commit, (size_t)i), "Get parent", ((void*)0));
 check_lg2(git_commit_tree(&a, parent), "Tree for parent", ((void*)0));
 check_lg2(git_commit_tree(&b, commit), "Tree for commit", ((void*)0));
 check_lg2(
  git_diff_tree_to_tree(&diff, git_commit_owner(commit), a, b, opts),
  "Checking diff between parent and commit", ((void*)0));

 ndeltas = (int)git_diff_num_deltas(diff);

 git_diff_free(diff);
 git_tree_free(a);
 git_tree_free(b);
 git_commit_free(parent);

 return ndeltas > 0;
}
