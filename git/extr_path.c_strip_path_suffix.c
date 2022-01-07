
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int stripped_path_suffix_offset (char const*,char const*) ;
 char* xstrndup (char const*,int) ;

char *strip_path_suffix(const char *path, const char *suffix)
{
 ssize_t offset = stripped_path_suffix_offset(path, suffix);

 return offset == -1 ? ((void*)0) : xstrndup(path, offset);
}
