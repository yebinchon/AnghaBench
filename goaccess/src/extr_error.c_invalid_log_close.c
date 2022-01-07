
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fclose (int *) ;
 int * log_invalid ;

void
invalid_log_close (void)
{
  if (log_invalid != ((void*)0))
    fclose (log_invalid);
}
