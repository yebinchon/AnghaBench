
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int GIT_ERROR_REPOSITORY ;
 int GIT_FILE_CONTENT_PREFIX ;
 int assert (int) ;
 scalar_t__ git__isspace (char const) ;
 char* git_buf_cstr (TYPE_1__*) ;
 int git_buf_dispose (TYPE_1__*) ;
 size_t git_buf_len (TYPE_1__*) ;
 int git_buf_rtrim (TYPE_1__*) ;
 int git_error_set (int ,char*,char const*) ;
 scalar_t__ git_futils_readbuffer (TYPE_1__*,char const*) ;
 int git_path_dirname_r (TYPE_1__*,char const*) ;
 int git_path_mkposix (int ) ;
 int git_path_prettify_dir (TYPE_1__*,char const*,char*) ;
 scalar_t__ memcmp (char*,int ,size_t) ;
 size_t strlen (int ) ;

__attribute__((used)) static int read_gitfile(git_buf *path_out, const char *file_path)
{
 int error = 0;
 git_buf file = GIT_BUF_INIT;
 size_t prefix_len = strlen(GIT_FILE_CONTENT_PREFIX);

 assert(path_out && file_path);

 if (git_futils_readbuffer(&file, file_path) < 0)
  return -1;

 git_buf_rtrim(&file);

 git_path_mkposix(file.ptr);

 if (git_buf_len(&file) <= prefix_len ||
  memcmp(git_buf_cstr(&file), GIT_FILE_CONTENT_PREFIX, prefix_len) != 0)
 {
  git_error_set(GIT_ERROR_REPOSITORY,
   "the `.git` file at '%s' is malformed", file_path);
  error = -1;
 }
 else if ((error = git_path_dirname_r(path_out, file_path)) >= 0) {
  const char *gitlink = git_buf_cstr(&file) + prefix_len;
  while (*gitlink && git__isspace(*gitlink)) gitlink++;

  error = git_path_prettify_dir(
   path_out, gitlink, git_buf_cstr(path_out));
 }

 git_buf_dispose(&file);
 return error;
}
