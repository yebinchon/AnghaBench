
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_oid ;
typedef int git_object ;
typedef int git_commit ;


 int GIT_OBJECT_COMMIT ;
 int git_object_lookup_prefix (int **,int *,int const*,size_t,int ) ;

int git_commit_lookup_prefix(git_commit **out, git_repository *repo, const git_oid *id, size_t len)
{
 return git_object_lookup_prefix((git_object **)out, repo, id, len, GIT_OBJECT_COMMIT);
}
