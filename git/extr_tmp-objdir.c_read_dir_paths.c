
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {int dummy; } ;
struct dirent {char* d_name; } ;
typedef int DIR ;


 int closedir (int *) ;
 int * opendir (char const*) ;
 struct dirent* readdir (int *) ;
 int string_list_append (struct string_list*,char*) ;

__attribute__((used)) static int read_dir_paths(struct string_list *out, const char *path)
{
 DIR *dh;
 struct dirent *de;

 dh = opendir(path);
 if (!dh)
  return -1;

 while ((de = readdir(dh)))
  if (de->d_name[0] != '.')
   string_list_append(out, de->d_name);

 closedir(dh);
 return 0;
}
