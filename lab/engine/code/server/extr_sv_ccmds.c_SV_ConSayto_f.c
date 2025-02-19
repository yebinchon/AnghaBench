
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int name; int state; } ;
typedef TYPE_1__ client_t ;
typedef int cleanName ;
struct TYPE_9__ {int integer; } ;
struct TYPE_8__ {int integer; } ;
struct TYPE_7__ {TYPE_1__* clients; } ;


 int Cmd_Argc () ;
 char* Cmd_ArgsFrom (int) ;
 char* Cmd_Argv (int) ;
 int Com_FieldStringToPlayerName (char*,int,char*) ;
 int Com_Printf (char*,...) ;
 int MAX_NAME_LENGTH ;
 int Q_CleanStr (char*) ;
 int Q_stricmp (char*,char*) ;
 int Q_strncpyz (char*,int ,int) ;
 int SV_SendServerCommand (TYPE_1__*,char*,char*) ;
 TYPE_4__* com_sv_running ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 TYPE_3__* sv_maxclients ;
 TYPE_2__ svs ;

__attribute__((used)) static void SV_ConSayto_f(void) {
 char *p;
 char text[1024];
 client_t *cl;
 char *rawname;
 char name[MAX_NAME_LENGTH];
 char cleanName[MAX_NAME_LENGTH];
 client_t *saytocl;
 int i;


 if ( !com_sv_running->integer ) {
  Com_Printf( "Server is not running.\n" );
  return;
 }

 if ( Cmd_Argc() < 3 ) {
  Com_Printf ("Usage: sayto <player name> <text>\n");
  return;
 }

 rawname = Cmd_Argv(1);



 Com_FieldStringToPlayerName( name, MAX_NAME_LENGTH, rawname );

 saytocl = ((void*)0);
 for ( i=0, cl=svs.clients ; i < sv_maxclients->integer ; i++,cl++ ) {
  if ( !cl->state ) {
   continue;
  }
  Q_strncpyz( cleanName, cl->name, sizeof(cleanName) );
  Q_CleanStr( cleanName );

  if ( !Q_stricmp( cleanName, name ) ) {
   saytocl = cl;
   break;
  }
 }
 if( !saytocl )
 {
  Com_Printf ("No such player name: %s.\n", name);
  return;
 }

 strcpy (text, "console_sayto: ");
 p = Cmd_ArgsFrom(2);

 if ( *p == '"' ) {
  p++;
  p[strlen(p)-1] = 0;
 }

 strcat(text, p);

 Com_Printf("%s\n", text);
 SV_SendServerCommand(saytocl, "chat \"%s\"", text);
}
