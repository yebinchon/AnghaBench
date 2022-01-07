
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_tree ;
typedef int git_repository ;
typedef int git_oid ;
typedef int git_object ;


 int GIT_OBJECT_ANY ;
 int GIT_OBJECT_TREE ;
 int cl_git_pass (int ) ;
 int git_object_free (int *) ;
 int git_object_lookup_prefix (int **,int *,int *,size_t,int ) ;
 int git_object_peel (int **,int *,int ) ;
 scalar_t__ git_oid_fromstrn (int *,char const*,size_t) ;
 size_t strlen (char const*) ;

git_tree *resolve_commit_oid_to_tree(
 git_repository *repo,
 const char *partial_oid)
{
 size_t len = strlen(partial_oid);
 git_oid oid;
 git_object *obj = ((void*)0);
 git_tree *tree = ((void*)0);

 if (git_oid_fromstrn(&oid, partial_oid, len) == 0)
  cl_git_pass(git_object_lookup_prefix(&obj, repo, &oid, len, GIT_OBJECT_ANY));

 cl_git_pass(git_object_peel((git_object **) &tree, obj, GIT_OBJECT_TREE));
 git_object_free(obj);
 return tree;
}
