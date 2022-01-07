
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FATAL (char*) ;
 char* getenv (char*) ;
 scalar_t__ snprintf (int *,int ,char*,char*) ;
 int sprintf (char*,char*,char*) ;
 char* xmalloc (scalar_t__) ;

char *
get_home (void)
{
  char *user_home = ((void*)0), *path = ((void*)0);

  user_home = getenv ("HOME");
  if (user_home == ((void*)0))
    FATAL ("Unable to determine the HOME environment variable.");

  path = xmalloc (snprintf (((void*)0), 0, "%s/.goaccessrc", user_home) + 1);
  sprintf (path, "%s/.goaccessrc", user_home);

  return path;
}
