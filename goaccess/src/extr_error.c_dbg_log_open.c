
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * fopen (char const*,char*) ;
 int * log_file ;

void
dbg_log_open (const char *path)
{
  if (path != ((void*)0)) {
    log_file = fopen (path, "w");
    if (log_file == ((void*)0))
      return;
  }
}
