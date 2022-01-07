
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {int d_name; } ;
typedef int DIR ;


 int closedir (int *) ;
 int is_dot_or_dotdot (int ) ;
 int * opendir (char const*) ;
 struct dirent* readdir (int *) ;

int is_empty_dir(const char *path)
{
 DIR *dir = opendir(path);
 struct dirent *e;
 int ret = 1;

 if (!dir)
  return 0;

 while ((e = readdir(dir)) != ((void*)0))
  if (!is_dot_or_dotdot(e->d_name)) {
   ret = 0;
   break;
  }

 closedir(dir);
 return ret;
}
