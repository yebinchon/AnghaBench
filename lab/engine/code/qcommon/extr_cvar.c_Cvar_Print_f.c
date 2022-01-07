
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cvar_t ;


 int Cmd_Argc () ;
 char* Cmd_Argv (int) ;
 int Com_Printf (char*,...) ;
 int * Cvar_FindVar (char*) ;
 int Cvar_Print (int *) ;

void Cvar_Print_f(void)
{
 char *name;
 cvar_t *cv;

 if(Cmd_Argc() != 2)
 {
  Com_Printf ("usage: print <variable>\n");
  return;
 }

 name = Cmd_Argv(1);

 cv = Cvar_FindVar(name);

 if(cv)
  Cvar_Print(cv);
 else
  Com_Printf ("Cvar %s does not exist.\n", name);
}
