
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** prom_envp ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;

char *prom_getenv(char *envname)
{
 char **env = prom_envp;
 int i;

 i = strlen(envname);

 while (*env) {
  if (strncmp(envname, *env, i) == 0 && *(*env + i) == '=')
   return *env + i + 1;
  env++;
 }

 return 0;
}
