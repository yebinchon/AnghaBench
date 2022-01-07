
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32_t ;
struct dirent {char* d_name; } ;
typedef int ssize_t ;
typedef int git_path_iconv_t ;
struct TYPE_9__ {int ptr; } ;
typedef TYPE_1__ git_buf ;
typedef int DIR ;


 scalar_t__ ENOENT ;
 int GIT_ENOTFOUND ;
 int GIT_ERROR_OS ;
 int GIT_PATH_DIR_PRECOMPOSE_UNICODE ;
 int GIT_PATH_ICONV_INIT ;
 int GIT_UNUSED (int) ;
 int closedir (int *) ;
 scalar_t__ errno ;
 int git_buf_len (TYPE_1__*) ;
 int git_buf_put (TYPE_1__*,char const*,size_t) ;
 int git_buf_truncate (TYPE_1__*,int ) ;
 int git_error_clear () ;
 int git_error_last () ;
 int git_error_set (int ,char*,int ) ;
 int git_error_set_after_callback (int) ;
 int git_path_iconv (int *,char const**,size_t*) ;
 int git_path_iconv_clear (int *) ;
 int git_path_iconv_init_precompose (int *) ;
 scalar_t__ git_path_is_dot_or_dotdot (char const*) ;
 scalar_t__ git_path_to_dir (TYPE_1__*) ;
 int * opendir (int ) ;
 struct dirent* readdir (int *) ;
 size_t strlen (char const*) ;

int git_path_direach(
 git_buf *path,
 uint32_t flags,
 int (*fn)(void *, git_buf *),
 void *arg)
{
 int error = 0;
 ssize_t wd_len;
 DIR *dir;
 struct dirent *de;





 GIT_UNUSED(flags);

 if (git_path_to_dir(path) < 0)
  return -1;

 wd_len = git_buf_len(path);

 if ((dir = opendir(path->ptr)) == ((void*)0)) {
  git_error_set(GIT_ERROR_OS, "failed to open directory '%s'", path->ptr);
  if (errno == ENOENT)
   return GIT_ENOTFOUND;

  return -1;
 }






 while ((de = readdir(dir)) != ((void*)0)) {
  const char *de_path = de->d_name;
  size_t de_len = strlen(de_path);

  if (git_path_is_dot_or_dotdot(de_path))
   continue;






  if ((error = git_buf_put(path, de_path, de_len)) < 0)
   break;

  git_error_clear();
  error = fn(arg, path);

  git_buf_truncate(path, wd_len);


  if (error != 0) {
   if (!git_error_last())
    git_error_set_after_callback(error);

   break;
  }
 }

 closedir(dir);





 return error;
}
