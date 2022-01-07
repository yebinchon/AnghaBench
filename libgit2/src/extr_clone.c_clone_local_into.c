
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_remote ;
typedef int git_fetch_options ;
typedef int git_checkout_options ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int GIT_CPDIR_LINK_FILES ;
 int GIT_ERROR_INVALID ;
 int GIT_OBJECT_DIR_MODE ;
 int GIT_REPOSITORY_ITEM_OBJECTS ;
 int assert (int) ;
 scalar_t__ can_link (int ,int ,int) ;
 int checkout_branch (int *,int *,int const*,char const*,int ) ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_buf_printf (int *,char*,int ) ;
 int git_error_set (int ,char*) ;
 int git_futils_cp_r (int ,int ,int,int ) ;
 int git_path_from_url_or_path (int *,int ) ;
 int git_remote_fetch (int *,int *,int const*,int ) ;
 int git_remote_url (int *) ;
 int git_repository_free (int *) ;
 int git_repository_is_empty (int *) ;
 scalar_t__ git_repository_item_path (int *,int *,int ) ;
 int git_repository_open (int **,int ) ;
 int git_repository_path (int *) ;

__attribute__((used)) static int clone_local_into(git_repository *repo, git_remote *remote, const git_fetch_options *fetch_opts, const git_checkout_options *co_opts, const char *branch, int link)
{
 int error, flags;
 git_repository *src;
 git_buf src_odb = GIT_BUF_INIT, dst_odb = GIT_BUF_INIT, src_path = GIT_BUF_INIT;
 git_buf reflog_message = GIT_BUF_INIT;

 assert(repo && remote);

 if (!git_repository_is_empty(repo)) {
  git_error_set(GIT_ERROR_INVALID, "the repository is not empty");
  return -1;
 }






 if ((error = git_path_from_url_or_path(&src_path, git_remote_url(remote))) < 0)
  return error;


 if ((error = git_repository_open(&src, git_buf_cstr(&src_path))) < 0) {
  git_buf_dispose(&src_path);
  return error;
 }

 if (git_repository_item_path(&src_odb, src, GIT_REPOSITORY_ITEM_OBJECTS) < 0
  || git_repository_item_path(&dst_odb, repo, GIT_REPOSITORY_ITEM_OBJECTS) < 0) {
  error = -1;
  goto cleanup;
 }

 flags = 0;
 if (can_link(git_repository_path(src), git_repository_path(repo), link))
  flags |= GIT_CPDIR_LINK_FILES;

 error = git_futils_cp_r(git_buf_cstr(&src_odb), git_buf_cstr(&dst_odb),
    flags, GIT_OBJECT_DIR_MODE);






 if (error < 0 && link) {
  flags &= ~GIT_CPDIR_LINK_FILES;
  error = git_futils_cp_r(git_buf_cstr(&src_odb), git_buf_cstr(&dst_odb),
     flags, GIT_OBJECT_DIR_MODE);
 }

 if (error < 0)
  goto cleanup;

 git_buf_printf(&reflog_message, "clone: from %s", git_remote_url(remote));

 if ((error = git_remote_fetch(remote, ((void*)0), fetch_opts, git_buf_cstr(&reflog_message))) != 0)
  goto cleanup;

 error = checkout_branch(repo, remote, co_opts, branch, git_buf_cstr(&reflog_message));

cleanup:
 git_buf_dispose(&reflog_message);
 git_buf_dispose(&src_path);
 git_buf_dispose(&src_odb);
 git_buf_dispose(&dst_odb);
 git_repository_free(src);
 return error;
}
