
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** prom_envp ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;

char *prom_getenv(char *env_name)
{






 char **var = prom_envp;
 int i = strlen(env_name);

 while (*var) {
  if (strncmp(env_name, *var, i) == 0) {
   return *var + strlen(env_name) + 1;
  }
  var++;
 }

 return ((void*)0);
}
