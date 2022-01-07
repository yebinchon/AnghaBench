
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_reference ;


 scalar_t__ GIT_REFERENCE_SYMBOLIC ;
 int assert (int) ;
 int git_reference_free (int *) ;
 scalar_t__ git_reference_type (int *) ;
 int git_repository_head_for_worktree (int **,int *,char const*) ;

int git_repository_head_detached_for_worktree(git_repository *repo, const char *name)
{
 git_reference *ref = ((void*)0);
 int error;

 assert(repo && name);

 if ((error = git_repository_head_for_worktree(&ref, repo, name)) < 0)
  goto out;

 error = (git_reference_type(ref) != GIT_REFERENCE_SYMBOLIC);
out:
 git_reference_free(ref);

 return error;
}
