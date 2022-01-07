
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 int GIT_BUF_INIT ;
 char* git_buf_detach (int *) ;
 int git_buf_dispose (int *) ;
 int git_path_dirname_r (int *,char const*) ;

char *git_path_dirname(const char *path)
{
 git_buf buf = GIT_BUF_INIT;
 char *dirname;

 git_path_dirname_r(&buf, path);
 dirname = git_buf_detach(&buf);
 git_buf_dispose(&buf);

 return dirname;
}
