
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_3__ {int (* function ) () ;int cmd; } ;


 int ARRAY_LEN (TYPE_1__*) ;
 char* CG_Argv (int ) ;
 int Q_stricmp (char const*,int ) ;
 TYPE_1__* commands ;
 int qfalse ;
 int qtrue ;
 int stub1 () ;

qboolean CG_ConsoleCommand( void ) {
 const char *cmd;
 int i;

 cmd = CG_Argv(0);

 for ( i = 0 ; i < ARRAY_LEN( commands ) ; i++ ) {
  if ( !Q_stricmp( cmd, commands[i].cmd ) ) {
   commands[i].function();
   return qtrue;
  }
 }

 return qfalse;
}
