
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_tree ;
typedef int git_repository ;
typedef int git_object ;


 int GIT_OBJECT_TREE ;
 int check_lg2 (int ,char*,char const*) ;
 int git_object_free (int *) ;
 int git_object_peel (int **,int *,int ) ;
 int git_revparse_single (int **,int *,char const*) ;

void treeish_to_tree(
 git_tree **out, git_repository *repo, const char *treeish)
{
 git_object *obj = ((void*)0);

 check_lg2(
  git_revparse_single(&obj, repo, treeish),
  "looking up object", treeish);

 check_lg2(
  git_object_peel((git_object **)out, obj, GIT_OBJECT_TREE),
  "resolving object to tree", treeish);

 git_object_free(obj);
}
