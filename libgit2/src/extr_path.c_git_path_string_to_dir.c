
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t strlen (char*) ;

void git_path_string_to_dir(char* path, size_t size)
{
 size_t end = strlen(path);

 if (end && path[end - 1] != '/' && end < size) {
  path[end] = '/';
  path[end + 1] = '\0';
 }
}
