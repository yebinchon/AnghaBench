
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
typedef TYPE_1__ cvar_t ;


 int CVAR_ARCHIVE ;
 int CVAR_SERVERINFO ;
 int CVAR_USERINFO ;
 int Cmd_Argc () ;
 int Cmd_ArgsFrom (int) ;
 char* Cmd_Argv (int) ;
 int Com_Printf (char*,char*) ;
 int Cvar_Print_f () ;
 TYPE_1__* Cvar_Set2 (char*,int ,int ) ;
 int cvar_modifiedFlags ;
 int qfalse ;

void Cvar_Set_f( void ) {
 int c;
 char *cmd;
 cvar_t *v;

 c = Cmd_Argc();
 cmd = Cmd_Argv(0);

 if ( c < 2 ) {
  Com_Printf ("usage: %s <variable> <value>\n", cmd);
  return;
 }
 if ( c == 2 ) {
  Cvar_Print_f();
  return;
 }

 v = Cvar_Set2 (Cmd_Argv(1), Cmd_ArgsFrom(2), qfalse);
 if( !v ) {
  return;
 }
 switch( cmd[3] ) {
  case 'a':
   if( !( v->flags & CVAR_ARCHIVE ) ) {
    v->flags |= CVAR_ARCHIVE;
    cvar_modifiedFlags |= CVAR_ARCHIVE;
   }
   break;
  case 'u':
   if( !( v->flags & CVAR_USERINFO ) ) {
    v->flags |= CVAR_USERINFO;
    cvar_modifiedFlags |= CVAR_USERINFO;
   }
   break;
  case 's':
   if( !( v->flags & CVAR_SERVERINFO ) ) {
    v->flags |= CVAR_SERVERINFO;
    cvar_modifiedFlags |= CVAR_SERVERINFO;
   }
   break;
 }
}
