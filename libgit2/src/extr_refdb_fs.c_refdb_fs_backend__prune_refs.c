
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int commonpath; } ;
typedef TYPE_1__ refdb_fs_backend ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int GIT_RMDIR_EMPTY_PARENTS ;
 int GIT_RMDIR_SKIP_ROOT ;
 int assert (int) ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 scalar_t__ git_buf_join3 (int *,char,int ,char const*,int ) ;
 scalar_t__ git_buf_joinpath (int *,int ,int ) ;
 scalar_t__ git_buf_sets (int *,char const*) ;
 int git_buf_truncate (int *,size_t) ;
 int git_futils_rmdir_r (char const*,int ,int) ;
 size_t git_path_common_dirlen (char*,int ) ;
 int git_path_squash_slashes (int *) ;
 size_t strlen (char*) ;

__attribute__((used)) static void refdb_fs_backend__prune_refs(
 refdb_fs_backend *backend,
 const char *ref_name,
 const char *prefix)
{
 git_buf relative_path = GIT_BUF_INIT;
 git_buf base_path = GIT_BUF_INIT;
 size_t commonlen;

 assert(backend && ref_name);

 if (git_buf_sets(&relative_path, ref_name) < 0)
  goto cleanup;

 git_path_squash_slashes(&relative_path);
 if ((commonlen = git_path_common_dirlen("refs/heads/", git_buf_cstr(&relative_path))) == strlen("refs/heads/") ||
  (commonlen = git_path_common_dirlen("refs/tags/", git_buf_cstr(&relative_path))) == strlen("refs/tags/") ||
  (commonlen = git_path_common_dirlen("refs/remotes/", git_buf_cstr(&relative_path))) == strlen("refs/remotes/")) {

  git_buf_truncate(&relative_path, commonlen);

  if (prefix) {
   if (git_buf_join3(&base_path, '/', backend->commonpath, prefix, git_buf_cstr(&relative_path)) < 0)
    goto cleanup;
  } else {
   if (git_buf_joinpath(&base_path, backend->commonpath, git_buf_cstr(&relative_path)) < 0)
    goto cleanup;
  }

  git_futils_rmdir_r(ref_name + commonlen, git_buf_cstr(&base_path), GIT_RMDIR_EMPTY_PARENTS | GIT_RMDIR_SKIP_ROOT);
 }

cleanup:
 git_buf_dispose(&relative_path);
 git_buf_dispose(&base_path);
}
