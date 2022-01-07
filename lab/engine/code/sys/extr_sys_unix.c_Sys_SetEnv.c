
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int setenv (char const*,char const*,int) ;
 int unsetenv (char const*) ;

void Sys_SetEnv(const char *name, const char *value)
{
 if(value && *value)
  setenv(name, value, 1);
 else
  unsetenv(name);
}
