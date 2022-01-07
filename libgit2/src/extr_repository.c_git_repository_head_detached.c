
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_reference ;
typedef int git_odb ;


 int GIT_HEAD_FILE ;
 scalar_t__ GIT_REFERENCE_SYMBOLIC ;
 int git_odb_exists (int *,int ) ;
 int git_reference_free (int *) ;
 scalar_t__ git_reference_lookup (int **,int *,int ) ;
 int git_reference_target (int *) ;
 scalar_t__ git_reference_type (int *) ;
 scalar_t__ git_repository_odb__weakptr (int **,int *) ;

int git_repository_head_detached(git_repository *repo)
{
 git_reference *ref;
 git_odb *odb = ((void*)0);
 int exists;

 if (git_repository_odb__weakptr(&odb, repo) < 0)
  return -1;

 if (git_reference_lookup(&ref, repo, GIT_HEAD_FILE) < 0)
  return -1;

 if (git_reference_type(ref) == GIT_REFERENCE_SYMBOLIC) {
  git_reference_free(ref);
  return 0;
 }

 exists = git_odb_exists(odb, git_reference_target(ref));

 git_reference_free(ref);
 return exists;
}
