
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ssize_t ;


 int GIT_ERROR_CHECK_ALLOC (char*) ;
 int GIT_ERROR_CHECK_ALLOC_ADD (size_t*,size_t,int) ;
 int GIT_ERROR_OS ;
 int git__free (char*) ;
 char* git__malloc (size_t) ;
 int git_error_set (int ,char*,char const*,...) ;
 size_t p_readlink (char const*,char*,size_t) ;
 scalar_t__ p_symlink (char*,char const*) ;

__attribute__((used)) static int cp_link(const char *from, const char *to, size_t link_size)
{
 int error = 0;
 ssize_t read_len;
 char *link_data;
 size_t alloc_size;

 GIT_ERROR_CHECK_ALLOC_ADD(&alloc_size, link_size, 1);
 link_data = git__malloc(alloc_size);
 GIT_ERROR_CHECK_ALLOC(link_data);

 read_len = p_readlink(from, link_data, link_size);
 if (read_len != (ssize_t)link_size) {
  git_error_set(GIT_ERROR_OS, "failed to read symlink data for '%s'", from);
  error = -1;
 }
 else {
  link_data[read_len] = '\0';

  if (p_symlink(link_data, to) < 0) {
   git_error_set(GIT_ERROR_OS, "could not symlink '%s' as '%s'",
    link_data, to);
   error = -1;
  }
 }

 git__free(link_data);
 return error;
}
