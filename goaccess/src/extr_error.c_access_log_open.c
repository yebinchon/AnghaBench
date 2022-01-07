
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_OK ;
 int access (char const*,int ) ;
 int * access_log ;
 int * fopen (char const*,char*) ;

int
access_log_open (const char *path)
{
  if (path == ((void*)0))
    return 0;

  if (access (path, F_OK) != -1)
    access_log = fopen (path, "a");
  else
    access_log = fopen (path, "w");
  if (access_log == ((void*)0))
    return 1;

  return 0;
}
