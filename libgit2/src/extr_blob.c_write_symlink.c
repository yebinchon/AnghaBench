
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;
typedef int git_oid ;
typedef int git_odb ;


 int GIT_ERROR_CHECK_ALLOC (char*) ;
 int GIT_ERROR_OS ;
 int GIT_OBJECT_BLOB ;
 int git__free (char*) ;
 char* git__malloc (size_t) ;
 int git_error_set (int ,char*,char const*) ;
 int git_odb_write (int *,int *,void*,size_t,int ) ;
 scalar_t__ p_readlink (char const*,char*,size_t) ;

__attribute__((used)) static int write_symlink(
 git_oid *id, git_odb *odb, const char *path, size_t link_size)
{
 char *link_data;
 ssize_t read_len;
 int error;

 link_data = git__malloc(link_size);
 GIT_ERROR_CHECK_ALLOC(link_data);

 read_len = p_readlink(path, link_data, link_size);
 if (read_len != (ssize_t)link_size) {
  git_error_set(GIT_ERROR_OS, "failed to create blob: cannot read symlink '%s'", path);
  git__free(link_data);
  return -1;
 }

 error = git_odb_write(id, odb, (void *)link_data, link_size, GIT_OBJECT_BLOB);
 git__free(link_data);
 return error;
}
