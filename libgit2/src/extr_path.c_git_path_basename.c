
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 int GIT_BUF_INIT ;
 char* git_buf_detach (int *) ;
 int git_buf_dispose (int *) ;
 int git_path_basename_r (int *,char const*) ;

char *git_path_basename(const char *path)
{
 git_buf buf = GIT_BUF_INIT;
 char *basename;

 git_path_basename_r(&buf, path);
 basename = git_buf_detach(&buf);
 git_buf_dispose(&buf);

 return basename;
}
