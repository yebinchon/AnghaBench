
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {int dummy; } ;
struct dirent {int d_name; } ;
typedef int DIR ;


 int closedir (int *) ;
 int error (char*,char const*) ;
 int is_dot_or_dotdot (int ) ;
 int * opendir (char const*) ;
 struct dirent* readdir (int *) ;
 int string_list_insert (struct string_list*,int ) ;

__attribute__((used)) static int read_directory_contents(const char *path, struct string_list *list)
{
 DIR *dir;
 struct dirent *e;

 if (!(dir = opendir(path)))
  return error("Could not open directory %s", path);

 while ((e = readdir(dir)))
  if (!is_dot_or_dotdot(e->d_name))
   string_list_insert(list, e->d_name);

 closedir(dir);
 return 0;
}
