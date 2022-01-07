
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; int name; } ;
typedef TYPE_1__ cvar_t ;


 int CVAR_USER_CREATED ;
 int Cmd_Argc () ;
 int Cmd_Argv (int) ;
 int Com_Printf (char*,int ,...) ;
 TYPE_1__* Cvar_FindVar (int ) ;
 int Cvar_Unset (TYPE_1__*) ;

void Cvar_Unset_f(void)
{
 cvar_t *cv;

 if(Cmd_Argc() != 2)
 {
  Com_Printf("Usage: %s <varname>\n", Cmd_Argv(0));
  return;
 }

 cv = Cvar_FindVar(Cmd_Argv(1));

 if(!cv)
  return;

 if(cv->flags & CVAR_USER_CREATED)
  Cvar_Unset(cv);
 else
  Com_Printf("Error: %s: Variable %s is not user created.\n", Cmd_Argv(0), cv->name);
}
