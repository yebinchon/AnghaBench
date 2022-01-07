
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int is_submodule_populated_gently (char const*,int*) ;

__attribute__((used)) static const char *default_name_or_path(const char *path_or_name)
{
 int error_code;

 if (!is_submodule_populated_gently(path_or_name, &error_code))
  return ((void*)0);

 return path_or_name;
}
