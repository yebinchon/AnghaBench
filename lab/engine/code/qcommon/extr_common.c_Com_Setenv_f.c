
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Cmd_Argc () ;
 char* Cmd_ArgsFrom (int) ;
 char* Cmd_Argv (int) ;
 int Com_Printf (char*,char*,...) ;
 int Sys_SetEnv (char*,char*) ;
 char* getenv (char*) ;

void Com_Setenv_f(void)
{
 int argc = Cmd_Argc();
 char *arg1 = Cmd_Argv(1);

 if(argc > 2)
 {
  char *arg2 = Cmd_ArgsFrom(2);

  Sys_SetEnv(arg1, arg2);
 }
 else if(argc == 2)
 {
  char *env = getenv(arg1);

  if(env)
   Com_Printf("%s=%s\n", arg1, env);
  else
   Com_Printf("%s undefined\n", arg1);
        }
}
