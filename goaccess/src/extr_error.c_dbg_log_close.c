
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fclose (int *) ;
 int * log_file ;

void
dbg_log_close (void)
{
  if (log_file != ((void*)0))
    fclose (log_file);
}
