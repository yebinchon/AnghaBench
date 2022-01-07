
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _putenv (int ) ;
 int va (char*,char const*,...) ;

void Sys_SetEnv(const char *name, const char *value)
{
 if(value)
  _putenv(va("%s=%s", name, value));
 else
  _putenv(va("%s=", name));
}
