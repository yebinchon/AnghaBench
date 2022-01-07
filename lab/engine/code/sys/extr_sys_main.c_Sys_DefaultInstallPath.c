
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* Sys_Cwd () ;
 char* installPath ;

char *Sys_DefaultInstallPath(void)
{
 if (*installPath)
  return installPath;
 else
  return Sys_Cwd();
}
