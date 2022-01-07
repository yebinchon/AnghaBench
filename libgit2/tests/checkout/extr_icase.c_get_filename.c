
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {int d_name; } ;
typedef int git_buf ;
typedef char DIR ;


 int GIT_BUF_INIT ;
 int cl_assert (char*) ;
 int closedir (char*) ;
 int git__free (char*) ;
 char* git_buf_detach (int *) ;
 int git_buf_dispose (int *) ;
 int git_buf_join (int *,char,char*,int ) ;
 char* git_path_basename (char const*) ;
 char* git_path_dirname (char const*) ;
 char* opendir (char*) ;
 struct dirent* readdir (char*) ;
 scalar_t__ strcasecmp (int ,char*) ;

__attribute__((used)) static char *get_filename(const char *in)
{
 char *search_dirname, *search_filename, *filename = ((void*)0);
 git_buf out = GIT_BUF_INIT;
 DIR *dir;
 struct dirent *de;

 cl_assert(search_dirname = git_path_dirname(in));
 cl_assert(search_filename = git_path_basename(in));

 cl_assert(dir = opendir(search_dirname));

 while ((de = readdir(dir))) {
  if (strcasecmp(de->d_name, search_filename) == 0) {
   git_buf_join(&out, '/', search_dirname, de->d_name);
   filename = git_buf_detach(&out);
   break;
  }
 }

 closedir(dir);

 git__free(search_dirname);
 git__free(search_filename);
 git_buf_dispose(&out);

 return filename;
}
