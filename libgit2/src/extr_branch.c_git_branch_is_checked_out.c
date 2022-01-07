
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_reference ;


 int GIT_REPOSITORY_FOREACH_HEAD_SKIP_REPO ;
 int assert (int const*) ;
 int branch_equals ;
 int git_reference_is_branch (int const*) ;
 int * git_reference_owner (int const*) ;
 int git_repository_foreach_head (int *,int ,int,void*) ;
 scalar_t__ git_repository_is_bare (int *) ;

int git_branch_is_checked_out(const git_reference *branch)
{
 git_repository *repo;
 int flags = 0;

 assert(branch);

 if (!git_reference_is_branch(branch))
  return 0;

 repo = git_reference_owner(branch);

 if (git_repository_is_bare(repo))
  flags |= GIT_REPOSITORY_FOREACH_HEAD_SKIP_REPO;

 return git_repository_foreach_head(repo, branch_equals, flags, (void *) branch) == 1;
}
