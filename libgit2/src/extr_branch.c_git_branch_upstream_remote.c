
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_config ;
typedef int git_buf ;


 int GIT_ENOTFOUND ;
 int GIT_ERROR_REFERENCE ;
 int git_buf_clear (int *) ;
 scalar_t__ git_buf_len (int *) ;
 int git_buf_sanitize (int *) ;
 int git_error_set (int ,char*,char const*) ;
 int git_reference__is_branch (char const*) ;
 int git_repository_config__weakptr (int **,int *) ;
 int not_a_local_branch (char const*) ;
 int retrieve_upstream_configuration (int *,int *,char const*,char*) ;

int git_branch_upstream_remote(git_buf *buf, git_repository *repo, const char *refname)
{
 int error;
 git_config *cfg;

 if (!git_reference__is_branch(refname))
  return not_a_local_branch(refname);

 if ((error = git_repository_config__weakptr(&cfg, repo)) < 0)
  return error;

 git_buf_sanitize(buf);

 if ((error = retrieve_upstream_configuration(buf, cfg, refname, "branch.%s.remote")) < 0)
  return error;

 if (git_buf_len(buf) == 0) {
  git_error_set(GIT_ERROR_REFERENCE, "branch '%s' does not have an upstream remote", refname);
  error = GIT_ENOTFOUND;
  git_buf_clear(buf);
 }

 return error;
}
