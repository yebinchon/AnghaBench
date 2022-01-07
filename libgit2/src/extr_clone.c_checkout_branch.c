
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_remote ;
typedef int git_checkout_options ;


 int git_checkout_head (int *,int const*) ;
 int git_remote_name (int *) ;
 int git_repository_is_bare (int *) ;
 scalar_t__ should_checkout (int *,int ,int const*) ;
 int update_head_to_branch (int *,int ,char const*,char const*) ;
 int update_head_to_remote (int *,int *,char const*) ;

__attribute__((used)) static int checkout_branch(git_repository *repo, git_remote *remote, const git_checkout_options *co_opts, const char *branch, const char *reflog_message)
{
 int error;

 if (branch)
  error = update_head_to_branch(repo, git_remote_name(remote), branch,
    reflog_message);

 else
  error = update_head_to_remote(repo, remote, reflog_message);

 if (!error && should_checkout(repo, git_repository_is_bare(repo), co_opts))
  error = git_checkout_head(repo, co_opts);

 return error;
}
