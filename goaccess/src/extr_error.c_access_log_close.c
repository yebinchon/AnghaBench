
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * access_log ;
 int fclose (int *) ;

void
access_log_close (void)
{
  if (access_log != ((void*)0))
    fclose (access_log);
}
