
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** _prom_envp ;
 scalar_t__ strcmp (char*,int ) ;

char *generic_prom_getenv(char *envname)
{
 char **env;
 char *ret;

 ret = ((void*)0);
 for (env = _prom_envp; *env != ((void*)0); env++) {
  if (strcmp(envname, *env++) == 0) {
   ret = *env;
   break;
  }
 }

 return ret;
}
