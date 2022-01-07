
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int stripped_path_suffix_offset (char const*,char const*) ;

int ends_with_path_components(const char *path, const char *components)
{
 return stripped_path_suffix_offset(path, components) != -1;
}
