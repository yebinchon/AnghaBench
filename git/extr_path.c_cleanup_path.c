
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ skip_prefix (char const*,char*,char const**) ;

__attribute__((used)) static const char *cleanup_path(const char *path)
{

 if (skip_prefix(path, "./", &path)) {
  while (*path == '/')
   path++;
 }
 return path;
}
