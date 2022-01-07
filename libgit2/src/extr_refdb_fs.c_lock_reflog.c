
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * repo; } ;
typedef TYPE_1__ refdb_fs_backend ;
typedef int git_repository ;
typedef int git_filebuf ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int GIT_EINVALIDSPEC ;
 int GIT_ERROR_INVALID ;
 int GIT_PATH_REJECT_FILESYSTEM_DEFAULTS ;
 int GIT_REFLOG_FILE_MODE ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_error_set (int ,char*,char const*) ;
 int git_filebuf_open (int *,int ,int ,int ) ;
 int git_path_isfile (int ) ;
 int git_path_isvalid (int *,char const*,int ,int ) ;
 scalar_t__ retrieve_reflog_path (int *,int *,char const*) ;

__attribute__((used)) static int lock_reflog(git_filebuf *file, refdb_fs_backend *backend, const char *refname)
{
 git_repository *repo;
 git_buf log_path = GIT_BUF_INIT;
 int error;

 repo = backend->repo;

 if (!git_path_isvalid(backend->repo, refname, 0, GIT_PATH_REJECT_FILESYSTEM_DEFAULTS)) {
  git_error_set(GIT_ERROR_INVALID, "invalid reference name '%s'", refname);
  return GIT_EINVALIDSPEC;
 }

 if (retrieve_reflog_path(&log_path, repo, refname) < 0)
  return -1;

 if (!git_path_isfile(git_buf_cstr(&log_path))) {
  git_error_set(GIT_ERROR_INVALID,
   "log file for reference '%s' doesn't exist", refname);
  error = -1;
  goto cleanup;
 }

 error = git_filebuf_open(file, git_buf_cstr(&log_path), 0, GIT_REFLOG_FILE_MODE);

cleanup:
 git_buf_dispose(&log_path);

 return error;
}
