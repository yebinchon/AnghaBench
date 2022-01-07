
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_remote ;
typedef int git_refspec ;
typedef int git_reference ;
typedef int git_config ;
typedef int git_buf ;


 int GIT_BRANCH_LOCAL ;
 int GIT_BRANCH_REMOTE ;
 int GIT_BUF_INIT ;
 int GIT_ENOTFOUND ;
 int GIT_ERROR_REFERENCE ;
 int GIT_REFS_HEADS_DIR ;
 scalar_t__ git_branch_lookup (int **,int *,char const*,int ) ;
 int git_branch_remote_name (int *,int *,char*) ;
 int git_buf_clear (int *) ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 scalar_t__ git_buf_printf (int *,char*,char const*) ;
 int git_buf_puts (int *,char*) ;
 scalar_t__ git_config_set_string (int *,int ,int ) ;
 int git_error_set (int ,char*,char const*) ;
 int git_reference__is_branch (char const*) ;
 int git_reference_free (int *) ;
 char* git_reference_name (int *) ;
 int * git_reference_owner (int *) ;
 scalar_t__ git_refspec_rtransform (int *,int const*,char*) ;
 int * git_remote__matching_dst_refspec (int *,char*) ;
 int git_remote_free (int *) ;
 scalar_t__ git_remote_lookup (int **,int *,int ) ;
 scalar_t__ git_repository_config__weakptr (int **,int *) ;
 int not_a_local_branch (char const*) ;
 int strlen (int ) ;
 int unset_upstream (int *,char const*) ;

int git_branch_set_upstream(git_reference *branch, const char *upstream_name)
{
 git_buf key = GIT_BUF_INIT, value = GIT_BUF_INIT;
 git_reference *upstream;
 git_repository *repo;
 git_remote *remote = ((void*)0);
 git_config *config;
 const char *name, *shortname;
 int local, error;
 const git_refspec *fetchspec;

 name = git_reference_name(branch);
 if (!git_reference__is_branch(name))
  return not_a_local_branch(name);

 if (git_repository_config__weakptr(&config, git_reference_owner(branch)) < 0)
  return -1;

 shortname = name + strlen(GIT_REFS_HEADS_DIR);

 if (upstream_name == ((void*)0))
  return unset_upstream(config, shortname);

 repo = git_reference_owner(branch);


 if (git_branch_lookup(&upstream, repo, upstream_name, GIT_BRANCH_LOCAL) == 0)
  local = 1;
 else if (git_branch_lookup(&upstream, repo, upstream_name, GIT_BRANCH_REMOTE) == 0)
  local = 0;
 else {
  git_error_set(GIT_ERROR_REFERENCE,
   "cannot set upstream for branch '%s'", shortname);
  return GIT_ENOTFOUND;
 }







 if (local)
  error = git_buf_puts(&value, ".");
 else
  error = git_branch_remote_name(&value, repo, git_reference_name(upstream));

 if (error < 0)
  goto on_error;

 if (git_buf_printf(&key, "branch.%s.remote", shortname) < 0)
  goto on_error;

 if (git_config_set_string(config, git_buf_cstr(&key), git_buf_cstr(&value)) < 0)
  goto on_error;

 if (local) {
  git_buf_clear(&value);
  if (git_buf_puts(&value, git_reference_name(upstream)) < 0)
   goto on_error;
 } else {

  if (git_remote_lookup(&remote, repo, git_buf_cstr(&value)) < 0)
   goto on_error;

  fetchspec = git_remote__matching_dst_refspec(remote, git_reference_name(upstream));
  git_buf_clear(&value);
  if (!fetchspec || git_refspec_rtransform(&value, fetchspec, git_reference_name(upstream)) < 0)
   goto on_error;

  git_remote_free(remote);
  remote = ((void*)0);
 }

 git_buf_clear(&key);
 if (git_buf_printf(&key, "branch.%s.merge", shortname) < 0)
  goto on_error;

 if (git_config_set_string(config, git_buf_cstr(&key), git_buf_cstr(&value)) < 0)
  goto on_error;

 git_reference_free(upstream);
 git_buf_dispose(&key);
 git_buf_dispose(&value);

 return 0;

on_error:
 git_reference_free(upstream);
 git_buf_dispose(&key);
 git_buf_dispose(&value);
 git_remote_free(remote);

 return -1;
}
