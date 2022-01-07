
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int git_repository ;
typedef int git_remote ;
struct TYPE_6__ {int download_tags; scalar_t__ update_fetchhead; } ;
typedef TYPE_1__ git_fetch_options ;
typedef int git_checkout_options ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int GIT_ERROR_INVALID ;
 int GIT_REMOTE_DOWNLOAD_TAGS_ALL ;
 int assert (int) ;
 int checkout_branch (int *,int *,int const*,char const*,int ) ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_buf_printf (int *,char*,int ) ;
 int git_error_set (int ,char*) ;
 int git_remote_dup (int **,int *) ;
 int git_remote_fetch (int *,int *,TYPE_1__*,int ) ;
 int git_remote_free (int *) ;
 int git_remote_url (int *) ;
 int git_repository_is_empty (int *) ;
 int memcpy (TYPE_1__*,TYPE_1__ const*,int) ;

__attribute__((used)) static int clone_into(git_repository *repo, git_remote *_remote, const git_fetch_options *opts, const git_checkout_options *co_opts, const char *branch)
{
 int error;
 git_buf reflog_message = GIT_BUF_INIT;
 git_fetch_options fetch_opts;
 git_remote *remote;

 assert(repo && _remote);

 if (!git_repository_is_empty(repo)) {
  git_error_set(GIT_ERROR_INVALID, "the repository is not empty");
  return -1;
 }

 if ((error = git_remote_dup(&remote, _remote)) < 0)
  return error;

 memcpy(&fetch_opts, opts, sizeof(git_fetch_options));
 fetch_opts.update_fetchhead = 0;
 fetch_opts.download_tags = GIT_REMOTE_DOWNLOAD_TAGS_ALL;
 git_buf_printf(&reflog_message, "clone: from %s", git_remote_url(remote));

 if ((error = git_remote_fetch(remote, ((void*)0), &fetch_opts, git_buf_cstr(&reflog_message))) != 0)
  goto cleanup;

 error = checkout_branch(repo, remote, co_opts, branch, git_buf_cstr(&reflog_message));

cleanup:
 git_remote_free(remote);
 git_buf_dispose(&reflog_message);

 return error;
}
