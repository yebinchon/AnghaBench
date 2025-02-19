
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int git_odb ;
struct TYPE_7__ {scalar_t__ ptr; } ;
typedef TYPE_1__ git_buf ;


 char const* GIT_ALTERNATES_FILE ;
 int GIT_ALTERNATES_MAX_DEPTH ;
 TYPE_1__ GIT_BUF_INIT ;
 char* git__strtok (char**,char*) ;
 char* git_buf_cstr (TYPE_1__*) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_joinpath (TYPE_1__*,char const*,char const*) ;
 scalar_t__ git_futils_readbuffer (TYPE_1__*,scalar_t__) ;
 int git_odb__add_default_backends (int *,char const*,int,int) ;
 int git_path_exists (scalar_t__) ;

__attribute__((used)) static int load_alternates(git_odb *odb, const char *objects_dir, int alternate_depth)
{
 git_buf alternates_path = GIT_BUF_INIT;
 git_buf alternates_buf = GIT_BUF_INIT;
 char *buffer;
 const char *alternate;
 int result = 0;


 if (alternate_depth > GIT_ALTERNATES_MAX_DEPTH)
  return 0;

 if (git_buf_joinpath(&alternates_path, objects_dir, GIT_ALTERNATES_FILE) < 0)
  return -1;

 if (git_path_exists(alternates_path.ptr) == 0) {
  git_buf_dispose(&alternates_path);
  return 0;
 }

 if (git_futils_readbuffer(&alternates_buf, alternates_path.ptr) < 0) {
  git_buf_dispose(&alternates_path);
  return -1;
 }

 buffer = (char *)alternates_buf.ptr;


 while ((alternate = git__strtok(&buffer, "\r\n")) != ((void*)0)) {
  if (*alternate == '\0' || *alternate == '#')
   continue;






  if (*alternate == '.' && !alternate_depth) {
   if ((result = git_buf_joinpath(&alternates_path, objects_dir, alternate)) < 0)
    break;
   alternate = git_buf_cstr(&alternates_path);
  }

  if ((result = git_odb__add_default_backends(odb, alternate, 1, alternate_depth + 1)) < 0)
   break;
 }

 git_buf_dispose(&alternates_path);
 git_buf_dispose(&alternates_buf);

 return result;
}
