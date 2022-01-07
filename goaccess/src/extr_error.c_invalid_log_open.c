
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * fopen (char const*,char*) ;
 int * log_invalid ;

void
invalid_log_open (const char *path)
{
  if (path != ((void*)0)) {
    log_invalid = fopen (path, "w");
    if (log_invalid == ((void*)0))
      return;
  }
}
