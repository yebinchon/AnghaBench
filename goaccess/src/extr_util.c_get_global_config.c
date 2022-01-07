
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* SYSCONFDIR ;
 scalar_t__ snprintf (int *,int ,char*,char*) ;
 int sprintf (char*,char*,char*) ;
 char* xmalloc (scalar_t__) ;

char *
get_global_config (void)
{
  char *path = ((void*)0);

  path = xmalloc (snprintf (((void*)0), 0, "%s/goaccess/goaccess.conf", SYSCONFDIR) + 1);
  sprintf (path, "%s/goaccess/goaccess.conf", SYSCONFDIR);

  return path;
}
