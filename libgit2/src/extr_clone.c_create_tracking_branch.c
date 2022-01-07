
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_reference ;
typedef int git_oid ;


 int GIT_REMOTE_ORIGIN ;
 int create_branch (int **,int *,int const*,char const*,char const*) ;
 int git_reference_name (int *) ;
 int setup_tracking_config (int *,char const*,int ,int ) ;

__attribute__((used)) static int create_tracking_branch(
 git_reference **branch,
 git_repository *repo,
 const git_oid *target,
 const char *branch_name,
 const char *log_message)
{
 int error;

 if ((error = create_branch(branch, repo, target, branch_name, log_message)) < 0)
  return error;

 return setup_tracking_config(
  repo,
  branch_name,
  GIT_REMOTE_ORIGIN,
  git_reference_name(*branch));
}
