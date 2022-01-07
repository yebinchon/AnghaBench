
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_tree ;
typedef int git_repository ;


 int GIT_EEXISTS ;
 int find_subtree_in_current_level (int **,int *,int *,char const*,int) ;
 int git_tree_free (int *) ;
 int git_tree_id (int *) ;
 int git_tree_lookup (int **,int *,int ) ;

__attribute__((used)) static int find_subtree_r(git_tree **out, git_tree *root,
   git_repository *repo, const char *target, int *fanout)
{
 int error;
 git_tree *subtree = ((void*)0);

 *out = ((void*)0);

 error = find_subtree_in_current_level(&subtree, repo, root, target, *fanout);
 if (error == GIT_EEXISTS)
  return git_tree_lookup(out, repo, git_tree_id(root));

 if (error < 0)
  return error;

 *fanout += 2;
 error = find_subtree_r(out, subtree, repo, target, fanout);
 git_tree_free(subtree);

 return error;
}
