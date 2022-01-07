
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_4__ {int name; } ;
typedef TYPE_1__ cvar_t ;


 int Cmd_Argc () ;
 int Cmd_Args () ;
 int Cmd_Argv (int ) ;
 TYPE_1__* Cvar_FindVar (int ) ;
 int Cvar_Print (TYPE_1__*) ;
 int Cvar_Set2 (int ,int ,int ) ;
 int qfalse ;
 int qtrue ;

qboolean Cvar_Command( void ) {
 cvar_t *v;


 v = Cvar_FindVar (Cmd_Argv(0));
 if (!v) {
  return qfalse;
 }


 if ( Cmd_Argc() == 1 ) {
  Cvar_Print( v );
  return qtrue;
 }


 Cvar_Set2 (v->name, Cmd_Args(), qfalse);
 return qtrue;
}
