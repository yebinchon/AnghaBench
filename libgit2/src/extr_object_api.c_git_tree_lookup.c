
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_tree ;
typedef int git_repository ;
typedef int git_oid ;
typedef int git_object ;


 int GIT_OBJECT_TREE ;
 int git_object_lookup (int **,int *,int const*,int ) ;

int git_tree_lookup(git_tree **out, git_repository *repo, const git_oid *id)
{
 return git_object_lookup((git_object **)out, repo, id, GIT_OBJECT_TREE);
}
