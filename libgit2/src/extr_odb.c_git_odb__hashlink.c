
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; scalar_t__ st_size; } ;
typedef int git_oid ;


 int GIT_ERROR_CHECK_ALLOC (char*) ;
 int GIT_ERROR_CHECK_ALLOC_ADD (size_t*,int,int) ;
 int GIT_ERROR_FILESYSTEM ;
 int GIT_ERROR_OS ;
 int GIT_OBJECT_BLOB ;
 scalar_t__ S_ISLNK (int ) ;
 int git__free (char*) ;
 int git__is_int (scalar_t__) ;
 char* git__malloc (size_t) ;
 int git_error_set (int ,char*,...) ;
 int git_futils_open_ro (char const*) ;
 int git_odb__hashfd (int *,int,int,int ) ;
 int git_odb_hash (int *,char*,int,int ) ;
 scalar_t__ git_path_lstat (char const*,struct stat*) ;
 int p_close (int) ;
 int p_readlink (char const*,char*,int) ;

int git_odb__hashlink(git_oid *out, const char *path)
{
 struct stat st;
 int size;
 int result;

 if (git_path_lstat(path, &st) < 0)
  return -1;

 if (!git__is_int(st.st_size) || (int)st.st_size < 0) {
  git_error_set(GIT_ERROR_FILESYSTEM, "file size overflow for 32-bit systems");
  return -1;
 }

 size = (int)st.st_size;

 if (S_ISLNK(st.st_mode)) {
  char *link_data;
  int read_len;
  size_t alloc_size;

  GIT_ERROR_CHECK_ALLOC_ADD(&alloc_size, size, 1);
  link_data = git__malloc(alloc_size);
  GIT_ERROR_CHECK_ALLOC(link_data);

  read_len = p_readlink(path, link_data, size);
  link_data[size] = '\0';
  if (read_len != size) {
   git_error_set(GIT_ERROR_OS, "failed to read symlink data for '%s'", path);
   git__free(link_data);
   return -1;
  }

  result = git_odb_hash(out, link_data, size, GIT_OBJECT_BLOB);
  git__free(link_data);
 } else {
  int fd = git_futils_open_ro(path);
  if (fd < 0)
   return -1;
  result = git_odb__hashfd(out, fd, size, GIT_OBJECT_BLOB);
  p_close(fd);
 }

 return result;
}
