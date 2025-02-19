
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct stat {scalar_t__ st_size; int st_mode; } ;
typedef int git_oid ;
typedef int git_file ;
struct TYPE_8__ {int size; int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int GIT_ENOTFOUND ;
 int GIT_ERROR_INVALID ;
 int GIT_ERROR_OS ;
 scalar_t__ S_ISDIR (int ) ;
 int assert (int) ;
 int errno ;
 int git__is_sizet (scalar_t__) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_swap (TYPE_1__*,TYPE_1__*) ;
 int git_error_set (int ,char*,...) ;
 int git_futils_open_ro (char const*) ;
 scalar_t__ git_futils_readbuffer_fd (TYPE_1__*,int,size_t) ;
 int git_hash_buf (int *,int ,int ) ;
 int git_oid__cmp (int *,int *) ;
 int git_oid_cpy (int *,int *) ;
 int git_path_set_error (int ,char const*,char*) ;
 int p_close (int) ;
 scalar_t__ p_stat (char const*,struct stat*) ;

int git_futils_readbuffer_updated(
 git_buf *out, const char *path, git_oid *checksum, int *updated)
{
 int error;
 git_file fd;
 struct stat st;
 git_buf buf = GIT_BUF_INIT;
 git_oid checksum_new;

 assert(out && path && *path);

 if (updated != ((void*)0))
  *updated = 0;

 if (p_stat(path, &st) < 0)
  return git_path_set_error(errno, path, "stat");


 if (S_ISDIR(st.st_mode)) {
  git_error_set(GIT_ERROR_INVALID, "requested file is a directory");
  return GIT_ENOTFOUND;
 }

 if (!git__is_sizet(st.st_size+1)) {
  git_error_set(GIT_ERROR_OS, "invalid regular file stat for '%s'", path);
  return -1;
 }

 if ((fd = git_futils_open_ro(path)) < 0)
  return fd;

 if (git_futils_readbuffer_fd(&buf, fd, (size_t)st.st_size) < 0) {
  p_close(fd);
  return -1;
 }

 p_close(fd);

 if (checksum) {
  if ((error = git_hash_buf(&checksum_new, buf.ptr, buf.size)) < 0) {
   git_buf_dispose(&buf);
   return error;
  }




  if (!git_oid__cmp(checksum, &checksum_new)) {
   git_buf_dispose(&buf);
   if (updated)
    *updated = 0;

   return 0;
  }

  git_oid_cpy(checksum, &checksum_new);
 }




 if (updated != ((void*)0))
  *updated = 1;

 git_buf_swap(out, &buf);
 git_buf_dispose(&buf);

 return 0;
}
