
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_tree_entry ;
typedef int git_tree ;
typedef int git_object ;


 int GIT_EINVALIDSPEC ;
 int GIT_ENOTFOUND ;
 int GIT_OBJECT_TREE ;
 int git_object_free (int *) ;
 int git_object_owner (int *) ;
 int git_object_peel (int **,int *,int ) ;
 int git_tree_entry_bypath (int **,int *,char const*) ;
 int git_tree_entry_free (int *) ;
 int git_tree_entry_to_object (int **,int ,int *) ;

__attribute__((used)) static int handle_colon_syntax(
 git_object **out,
 git_object *obj,
 const char *path)
{
 git_object *tree;
 int error = -1;
 git_tree_entry *entry = ((void*)0);

 if ((error = git_object_peel(&tree, obj, GIT_OBJECT_TREE)) < 0)
  return error == GIT_ENOTFOUND ? GIT_EINVALIDSPEC : error;

 if (*path == '\0') {
  *out = tree;
  return 0;
 }





 if ((error = git_tree_entry_bypath(&entry, (git_tree *)tree, path)) < 0)
  goto cleanup;

 error = git_tree_entry_to_object(out, git_object_owner(tree), entry);

cleanup:
 git_tree_entry_free(entry);
 git_object_free(tree);

 return error;
}
