
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_refname_t ;


 int GIT_CONFIGMAP_PRECOMPOSE ;
 unsigned int GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL ;
 unsigned int GIT_REFERENCE_FORMAT__PRECOMPOSE_UNICODE ;
 unsigned int GIT_REFERENCE_FORMAT__VALIDATION_DISABLE ;
 int GIT_REFNAME_MAX ;
 int git_reference_normalize_name (int ,int ,char const*,unsigned int) ;
 int git_repository__configmap_lookup (int*,int *,int ) ;

__attribute__((used)) static int reference_normalize_for_repo(
 git_refname_t out,
 git_repository *repo,
 const char *name,
 bool validate)
{
 int precompose;
 unsigned int flags = GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL;

 if (!git_repository__configmap_lookup(&precompose, repo, GIT_CONFIGMAP_PRECOMPOSE) &&
  precompose)
  flags |= GIT_REFERENCE_FORMAT__PRECOMPOSE_UNICODE;

 if (!validate)
  flags |= GIT_REFERENCE_FORMAT__VALIDATION_DISABLE;

 return git_reference_normalize_name(out, GIT_REFNAME_MAX, name, flags);
}
