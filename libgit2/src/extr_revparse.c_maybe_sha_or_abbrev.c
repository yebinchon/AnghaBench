
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_oid ;
typedef int git_object ;


 int GIT_ENOTFOUND ;
 int GIT_OBJECT_ANY ;
 int git_object_lookup_prefix (int **,int *,int *,size_t,int ) ;
 scalar_t__ git_oid_fromstrn (int *,char const*,size_t) ;

__attribute__((used)) static int maybe_sha_or_abbrev(git_object** out, git_repository *repo, const char *spec, size_t speclen)
{
 git_oid oid;

 if (git_oid_fromstrn(&oid, spec, speclen) < 0)
  return GIT_ENOTFOUND;

 return git_object_lookup_prefix(out, repo, &oid, speclen, GIT_OBJECT_ANY);
}
