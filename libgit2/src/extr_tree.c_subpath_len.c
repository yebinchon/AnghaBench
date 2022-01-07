
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char const*,char) ;
 size_t strlen (char const*) ;

__attribute__((used)) static size_t subpath_len(const char *path)
{
 const char *slash_pos = strchr(path, '/');
 if (slash_pos == ((void*)0))
  return strlen(path);

 return slash_pos - path;
}
