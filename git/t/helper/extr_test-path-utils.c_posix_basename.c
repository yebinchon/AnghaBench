
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* basename (char*) ;

__attribute__((used)) static char *posix_basename(char *path)
{
 return basename(path);
}
