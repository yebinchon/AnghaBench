
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_repository ;
typedef int git_oid ;
typedef scalar_t__ git_off_t ;
typedef int git_object_t ;
typedef int git_filter_list ;
typedef scalar_t__ git_file ;
struct TYPE_5__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int GIT_ERROR_OS ;
 int GIT_FILTER_DEFAULT ;
 int GIT_FILTER_TO_ODB ;
 int assert (int ) ;
 int git__is_sizet (scalar_t__) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_error_set (int ,char*) ;
 int git_filter_list_free (int *) ;
 int git_filter_list_load (int **,int *,int *,char const*,int ,int ) ;
 scalar_t__ git_futils_filesize (scalar_t__) ;
 scalar_t__ git_futils_open_ro (int ) ;
 int git_odb__hashfd_filtered (int *,scalar_t__,size_t,int ,int *) ;
 int git_path_join_unrooted (TYPE_1__*,char const*,int ,int *) ;
 int git_repository_workdir (int *) ;
 int p_close (scalar_t__) ;
 scalar_t__ strlen (char const*) ;

int git_repository_hashfile(
 git_oid *out,
 git_repository *repo,
 const char *path,
 git_object_t type,
 const char *as_path)
{
 int error;
 git_filter_list *fl = ((void*)0);
 git_file fd = -1;
 git_off_t len;
 git_buf full_path = GIT_BUF_INIT;

 assert(out && path && repo);






 error = git_path_join_unrooted(
  &full_path, path, git_repository_workdir(repo), ((void*)0));
 if (error < 0)
  return error;

 if (!as_path)
  as_path = path;


 if (strlen(as_path) > 0) {
  error = git_filter_list_load(
   &fl, repo, ((void*)0), as_path,
   GIT_FILTER_TO_ODB, GIT_FILTER_DEFAULT);
  if (error < 0)
   return error;
 } else {
  error = 0;
 }



 fd = git_futils_open_ro(full_path.ptr);
 if (fd < 0) {
  error = fd;
  goto cleanup;
 }

 len = git_futils_filesize(fd);
 if (len < 0) {
  error = (int)len;
  goto cleanup;
 }

 if (!git__is_sizet(len)) {
  git_error_set(GIT_ERROR_OS, "file size overflow for 32-bit systems");
  error = -1;
  goto cleanup;
 }

 error = git_odb__hashfd_filtered(out, fd, (size_t)len, type, fl);

cleanup:
 if (fd >= 0)
  p_close(fd);
 git_filter_list_free(fl);
 git_buf_dispose(&full_path);

 return error;
}
